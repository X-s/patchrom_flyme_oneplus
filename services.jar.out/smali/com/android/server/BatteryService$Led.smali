.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# static fields
.field private static final DELAY_UPDATE_LIGHT:I = 0x1f4

.field private static final MSG_UPDATE_LIGHT:I = 0x1


# instance fields
.field private mBatteryFastChargeARGB:I

.field private mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private mBatteryLowARGB:I

.field private mBatteryMediumARGB:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLightHandler:Landroid/os/Handler;

.field private mScreenOn:Z

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1024
    new-instance v1, Lcom/android/server/BatteryService$Led$1;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$Led$1;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v1, p0, Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;

    .line 1031
    new-instance v1, Lcom/android/server/BatteryService$Led$2;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$Led$2;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object v1, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1053
    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 1055
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 1057
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1059
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 1061
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 1063
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 1065
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x509000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryFastChargeARGB:I

    .line 1069
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1070
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1071
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1072
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1073
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    .line 1075
    return-void
.end method

.method static synthetic access$1502(Lcom/android/server/BatteryService$Led;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService$Led;
    .param p1, "x1"    # Z

    .prologue
    .line 1008
    iput-boolean p1, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/BatteryService$Led;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService$Led;

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isHvdcpPresent()Z
    .locals 11

    .prologue
    .line 1078
    new-instance v9, Ljava/io/File;

    const-string v1, "/sys/class/power_supply/usb/type"

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1085
    .local v9, "mChargerTypeFile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 1086
    .local v8, "fileReader":Ljava/io/FileReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1087
    .local v6, "br":Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "type":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "USB_HVDCP"

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1089
    const/4 v10, 0x1

    .line 1092
    .local v10, "ret":Z
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1093
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1102
    .end local v0    # "type":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "fileReader":Ljava/io/FileReader;
    :goto_1
    return v10

    .line 1091
    .end local v10    # "ret":Z
    .restart local v0    # "type":Ljava/lang/String;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    :cond_0
    const/4 v10, 0x0

    .restart local v10    # "ret":Z
    goto :goto_0

    .line 1094
    .end local v0    # "type":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v10    # "ret":Z
    :catch_0
    move-exception v7

    .line 1095
    .local v7, "e":Ljava/io/FileNotFoundException;
    const/4 v10, 0x0

    .line 1096
    .restart local v10    # "ret":Z
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failure in reading charger type"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1097
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "ret":Z
    :catch_1
    move-exception v7

    .line 1098
    .local v7, "e":Ljava/io/IOException;
    const/4 v10, 0x0

    .line 1099
    .restart local v10    # "ret":Z
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failure in reading charger type"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public setLedColors(III)V
    .locals 3
    .param p1, "batteryLowARGB"    # I
    .param p2, "batteryMediumARGB"    # I
    .param p3, "batteryFullARGB"    # I

    .prologue
    .line 1107
    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 1108
    iput p2, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1109
    iput p3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 1110
    const-string v0, "BatteryLed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBatteryLowARGB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mBatteryMediumARGB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mBatteryFullARGB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    return-void
.end method

.method public updateLightsLocked()V
    .locals 7

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 1120
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1178
    :goto_0
    return-void

    .line 1124
    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLowHint:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mChargingHint:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1125
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 1129
    :cond_2
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v0, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 1130
    .local v0, "level":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v1, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 1132
    .local v1, "status":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mDefLowBatteryWarningLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)I

    move-result v2

    if-gt v0, v2, :cond_6

    .line 1134
    if-ne v1, v3, :cond_4

    .line 1136
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mFastChargeStatus:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryFastChargeARGB:I

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    goto :goto_1

    .line 1141
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    if-eqz v2, :cond_5

    .line 1142
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 1147
    :cond_5
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_0

    .line 1150
    :cond_6
    if-eq v1, v3, :cond_7

    if-ne v1, v4, :cond_c

    .line 1156
    :cond_7
    if-eq v1, v4, :cond_8

    const/16 v2, 0x63

    if-le v0, v2, :cond_9

    .line 1162
    :cond_8
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 1164
    :cond_9
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->isHvdcpPresent()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1166
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_0

    .line 1170
    :cond_a
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mFastChargeStatus:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryFastChargeARGB:I

    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/server/lights/Light;->setColor(I)V

    goto/16 :goto_0

    :cond_b
    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    goto :goto_2

    .line 1176
    :cond_c
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto/16 :goto_0
.end method
