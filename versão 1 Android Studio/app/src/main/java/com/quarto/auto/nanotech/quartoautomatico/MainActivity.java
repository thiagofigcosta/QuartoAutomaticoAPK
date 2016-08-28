package com.quarto.auto.nanotech.quartoautomatico;

import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ToggleButton;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;


public class MainActivity extends ActionBarActivity {

    //private Socket socket;

    //private static final int SERVERPORT = 8080;
    //String SERVER_IP;


    EditText url;

    Button connect, btrefresh;

    ToggleButton porta, filtro, pc, lamp, tv, autoporta, autolamp, autopc;

    CheckBox adr, rod;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        url = (EditText) findViewById(R.id.editText);

        connect = (Button) findViewById(R.id.btn_connect);
        btrefresh = (Button) findViewById(R.id.btn_refresh);

        porta = (ToggleButton) findViewById(R.id.tB_door);
        filtro = (ToggleButton) findViewById(R.id.tB_filtro);
        pc = (ToggleButton) findViewById(R.id.tB_pc);
        lamp = (ToggleButton) findViewById(R.id.tB_Lamp);
        tv = (ToggleButton) findViewById(R.id.tB_tv);
        autoporta = (ToggleButton) findViewById(R.id.tB_autoPorta);
        autolamp = (ToggleButton) findViewById(R.id.tB_autoLamp);
        autopc = (ToggleButton) findViewById(R.id.tB_autoPc);

        adr = (CheckBox) findViewById(R.id.cb_adri);
        rod = (CheckBox) findViewById(R.id.cb_ro);


        connect.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View vw) {
                //SERVER_IP = url.getText().toString();
                ///delete?
            }
        });

        btrefresh.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View vw) {
                refresh("07!??");
            }
        });


        porta.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View vw) {
                refresh("00!??");
            }
        });
        filtro.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View vw) {
                refresh("18!??");
            }
        });
        pc.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View vw) {
                refresh("02!??");
            }
        });
        tv.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View vw) {
                refresh("03!??");
            }
        });
        autoporta.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View vw) {
                refresh("17!??");
            }
        });
        autolamp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View vw) {
                refresh("13!??");
            }
        });
        autopc.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View vw) {
                refresh("15!??");
            }
        });
        lamp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View vw) {
                refresh("01!??");
            }
        });

        adr.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View vw) {
                refresh("04!??");
            }
        });

        rod.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View vw) {
                refresh("05!??");
            }
        });





    }



public void process(String in){
    if (in.equals("") || in.equals("/n/n"))
        return;
    String field="-1";
    String value="-1";
    for(int i=0; i<in.length();i++){
        if(in.charAt(i)=='!'){
            field="0";
            value="0";
            for(int j=0;j<i;j++){
                if(in.charAt(j)!='\n')
                    field+=in.charAt(j);
            }
            for(int j=(i+1);j<=in.length();j++){
                if(in.charAt(j)!='\n')
                    value+=in.charAt(j);
            }
        }
    }
    switch(Integer.valueOf(field)){
        default:
            return;
        case 0:
            if(Integer.valueOf(value)==0)
                porta.setChecked(false);
            else
                porta.setChecked(true);
            break;

        case 1:
            if(Integer.valueOf(value)==0)
                lamp.setChecked(false);
            else
                lamp.setChecked(true);
            break;

        case 2:
            if(Integer.valueOf(value)==0)
                pc.setChecked(false);
            else
                pc.setChecked(true);
            break;

        case 3:
            if(Integer.valueOf(value)==0)
                tv.setChecked(false);
            else
                tv.setChecked(true);
            break;

        case 4:
            if(Integer.valueOf(value)==0)
                adr.setChecked(false);
            else
                adr.setChecked(true);
            break;

        case 5:
            if(Integer.valueOf(value)==0)
                rod.setChecked(false);
            else
                rod.setChecked(true);
            break;

        case 6:
            //luminosidade
            break;
        case 7:
            //porta fechada?
            break;
        case 8:
            //janela fechada?
            break;
        case 9:
            //emergencia?
            break;
        case 10:
            //entradas adriana
            break;
        case 11:
            //entradas rodrigo
            break;
        case 12:
            //entradas eu
            break;

        case 13:
            if(Integer.valueOf(value)==0)
                autolamp.setChecked(false);
            else
                autolamp.setChecked(true);

            break;

        case 14:
            //hora de ligar a luz
            break;

        case 15:
            if(Integer.valueOf(value)==0)
                autopc.setChecked(false);
            else
                autopc.setChecked(true);
            break;

        case 16:
            //hora de ligar o pc
            break;

        case 17:
            if(Integer.valueOf(value)==0)
                autoporta.setChecked(false);
            else
                autoporta.setChecked(true);
            break;

        case 18:
            if(Integer.valueOf(value)==0)
                filtro.setChecked(false);
            else
                filtro.setChecked(true);
            break;

        case 19:
             //temperatura
        break;
    }
}

public void refresh(String send){
    Socket socket = null;
    DataOutputStream dataOutputStream = null;
    DataInputStream dataInputStream = null;
    try {
        socket = new Socket("177.42.90.142", 8080);
        dataOutputStream = new DataOutputStream(socket.getOutputStream());
        dataInputStream = new DataInputStream(socket.getInputStream());
        dataOutputStream.writeUTF("129854!"+send);
        socket.close();
        process(dataInputStream.readUTF());

    } catch (UnknownHostException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
    } catch (IOException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
    }
    finally{
        if (socket != null){
            try {
                socket.close();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }

        if (dataOutputStream != null){
            try {
                dataOutputStream.close();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }

        if (dataInputStream != null){
            try {
                dataInputStream.close();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
    }
}









//--------------------------
       /* try {
            PrintWriter out = new PrintWriter(new BufferedWriter(
                    new OutputStreamWriter(socket.getOutputStream())),
                    true);
            out.println("129854!"+send);
            out.flush();
            BufferedReader  in = new BufferedReader(new InputStreamReader(socket.getInputStream()));
            String read = in.readLine();
            //in.close();
            //out.close();
            socket.close();
            process(read);
        } catch (UnknownHostException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }*/
    //}
/*
class ClientThread implements Runnable {

        @Override
        public void run() {
            try {
                InetAddress serverAddr = InetAddress.getByName(SERVER_IP);
                socket = new Socket(serverAddr, SERVERPORT);

            } catch (UnknownHostException e1) {
                e1.printStackTrace();
            } catch (IOException e1) {
                e1.printStackTrace();
            }
        }
           // refresh("07!??");
           //--------------------------
       //     try {
       //        wait(5000);
        //    } catch (InterruptedException e) {
        //        e.printStackTrace();
       //     }
        //}

    }
*/

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
}
