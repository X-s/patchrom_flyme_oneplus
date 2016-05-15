.class final Lcom/android/server/OemPowerUI$oemPowerUIReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OemPowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemPowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "oemPowerUIReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemPowerUI;


# direct methods
.method private constructor <init>(Lcom/android/server/OemPowerUI;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OemPowerUI;Lcom/android/server/OemPowerUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/OemPowerUI;
    .param p2, "x1"    # Lcom/android/server/OemPowerUI$1;

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;-><init>(Lcom/android/server/OemPowerUI;)V

    return-void
.end method

.method private showBatteryChargeDialog(Lcom/android/server/OemPowerUI$ProtectType;)V
    .locals 7
    .param p1, "type"    # Lcom/android/server/OemPowerUI$ProtectType;

    .prologue
    .line 270
    const/4 v3, 0x0

    .line 271
    .local v3, "title":I
    const/4 v1, 0x0

    .line 273
    .local v1, "content":I
    iget-object v4, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    # getter for: Lcom/android/server/OemPowerUI;->mShowBatteryChargeDialogType:Lcom/android/server/OemPowerUI$ProtectType;
    invoke-static {v4}, Lcom/android/server/OemPowerUI;->access$1100(Lcom/android/server/OemPowerUI;)Lcom/android/server/OemPowerUI$ProtectType;

    move-result-object v4

    if-ne p1, v4, :cond_0

    .line 365
    :goto_0
    return-void

    .line 276
    :cond_0
    sget-object v4, Lcom/android/server/OemPowerUI$1;->$SwitchMap$com$android$server$OemPowerUI$ProtectType:[I

    invoke-virtual {p1}, Lcom/android/server/OemPowerUI$ProtectType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 328
    :goto_1
    :pswitch_0
    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    .line 329
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->dismissBatteryChargeDialog(Lcom/android/server/OemPowerUI$ProtectType;)V

    goto :goto_0

    .line 281
    :pswitch_1
    const v3, 0x1040750

    .line 282
    const v1, 0x1040754

    .line 283
    goto :goto_1

    .line 285
    :pswitch_2
    const v3, 0x1040750

    .line 286
    const v1, 0x1040756

    .line 287
    goto :goto_1

    .line 289
    :pswitch_3
    const v3, 0x1040751

    .line 290
    const v1, 0x1040758

    .line 291
    goto :goto_1

    .line 293
    :pswitch_4
    const v3, 0x1040751

    .line 294
    const v1, 0x1040757

    .line 295
    goto :goto_1

    .line 297
    :pswitch_5
    const v3, 0x1040752

    .line 298
    const v1, 0x1040759

    .line 299
    goto :goto_1

    .line 301
    :pswitch_6
    const v3, 0x104074f

    .line 302
    const v1, 0x1040753

    .line 303
    goto :goto_1

    .line 305
    :pswitch_7
    const v3, 0x1040751

    .line 306
    const v1, 0x104074d

    .line 307
    goto :goto_1

    .line 310
    :pswitch_8
    const v3, 0x1040751

    .line 311
    const v1, 0x104074c

    .line 312
    goto :goto_1

    .line 333
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    # getter for: Lcom/android/server/OemPowerUI;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/OemPowerUI;->access$700(Lcom/android/server/OemPowerUI;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 335
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/android/server/OemPowerUI$oemPowerUIReceiver$1;

    invoke-direct {v6, p0}, Lcom/android/server/OemPowerUI$oemPowerUIReceiver$1;-><init>(Lcom/android/server/OemPowerUI$oemPowerUIReceiver;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 346
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->dismissBatteryChargeDialog(Lcom/android/server/OemPowerUI$ProtectType;)V

    .line 350
    iget-object v4, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    # setter for: Lcom/android/server/OemPowerUI;->mBatteryChargeDialog:Landroid/app/AlertDialog;
    invoke-static {v4, v2}, Lcom/android/server/OemPowerUI;->access$902(Lcom/android/server/OemPowerUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 351
    iget-object v4, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    # getter for: Lcom/android/server/OemPowerUI;->mBatteryChargeDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/server/OemPowerUI;->access$900(Lcom/android/server/OemPowerUI;)Landroid/app/AlertDialog;

    move-result-object v4

    new-instance v5, Lcom/android/server/OemPowerUI$oemPowerUIReceiver$2;

    invoke-direct {v5, p0}, Lcom/android/server/OemPowerUI$oemPowerUIReceiver$2;-><init>(Lcom/android/server/OemPowerUI$oemPowerUIReceiver;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 359
    iget-object v4, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    # getter for: Lcom/android/server/OemPowerUI;->mBatteryChargeDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/server/OemPowerUI;->access$900(Lcom/android/server/OemPowerUI;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 360
    const-string v4, "OemPowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show dialog curtype="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "last:type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    # getter for: Lcom/android/server/OemPowerUI;->mShowBatteryChargeDialogType:Lcom/android/server/OemPowerUI$ProtectType;
    invoke-static {v6}, Lcom/android/server/OemPowerUI;->access$1100(Lcom/android/server/OemPowerUI;)Lcom/android/server/OemPowerUI$ProtectType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v4, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/OemPowerUI;->isShowBatteryChargeDialog:Z
    invoke-static {v4, v5}, Lcom/android/server/OemPowerUI;->access$1002(Lcom/android/server/OemPowerUI;Z)Z

    .line 364
    iget-object v4, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    # setter for: Lcom/android/server/OemPowerUI;->mShowBatteryChargeDialogType:Lcom/android/server/OemPowerUI$ProtectType;
    invoke-static {v4, p1}, Lcom/android/server/OemPowerUI;->access$1102(Lcom/android/server/OemPowerUI;Lcom/android/server/OemPowerUI$ProtectType;)Lcom/android/server/OemPowerUI$ProtectType;

    goto/16 :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dismissBatteryChargeDialog(Lcom/android/server/OemPowerUI$ProtectType;)V
    .locals 2
    .param p1, "type"    # Lcom/android/server/OemPowerUI$ProtectType;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    # getter for: Lcom/android/server/OemPowerUI;->mBatteryChargeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/OemPowerUI;->access$900(Lcom/android/server/OemPowerUI;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    # getter for: Lcom/android/server/OemPowerUI;->isShowBatteryChargeDialog:Z
    invoke-static {v0}, Lcom/android/server/OemPowerUI;->access$1000(Lcom/android/server/OemPowerUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    # getter for: Lcom/android/server/OemPowerUI;->mBatteryChargeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/OemPowerUI;->access$900(Lcom/android/server/OemPowerUI;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 259
    iget-object v0, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/OemPowerUI;->mBatteryChargeDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/server/OemPowerUI;->access$902(Lcom/android/server/OemPowerUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 260
    iget-object v0, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/OemPowerUI;->isShowBatteryChargeDialog:Z
    invoke-static {v0, v1}, Lcom/android/server/OemPowerUI;->access$1002(Lcom/android/server/OemPowerUI;Z)Z

    .line 264
    :cond_0
    sget-object v0, Lcom/android/server/OemPowerUI$ProtectType;->ProtectTpye_MAX:Lcom/android/server/OemPowerUI$ProtectType;

    if-eq p1, v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    sget-object v1, Lcom/android/server/OemPowerUI$ProtectType;->ProtectTpye_UNKNOW:Lcom/android/server/OemPowerUI$ProtectType;

    # setter for: Lcom/android/server/OemPowerUI;->mShowBatteryChargeDialogType:Lcom/android/server/OemPowerUI$ProtectType;
    invoke-static {v0, v1}, Lcom/android/server/OemPowerUI;->access$1102(Lcom/android/server/OemPowerUI;Lcom/android/server/OemPowerUI$ProtectType;)Lcom/android/server/OemPowerUI$ProtectType;

    .line 267
    :cond_1
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    # getter for: Lcom/android/server/OemPowerUI;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/OemPowerUI;->access$700(Lcom/android/server/OemPowerUI;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 230
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 234
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    new-instance v1, Lcom/android/server/OemPowerUI$BatteryChargeInfo;

    iget-object v3, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/android/server/OemPowerUI$BatteryChargeInfo;-><init>(Lcom/android/server/OemPowerUI;Lcom/android/server/OemPowerUI$BatteryChargeInfo;)V

    .line 237
    .local v1, "bcinfo":Lcom/android/server/OemPowerUI$BatteryChargeInfo;
    invoke-virtual {v1, p2, v1}, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->getBatteryChargeInfofromIntent(Landroid/content/Intent;Lcom/android/server/OemPowerUI$BatteryChargeInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    iget-object v3, p0, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->this$0:Lcom/android/server/OemPowerUI;

    # invokes: Lcom/android/server/OemPowerUI;->checkBatteryChargeDialogType(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)Lcom/android/server/OemPowerUI$ProtectType;
    invoke-static {v3, v1}, Lcom/android/server/OemPowerUI;->access$800(Lcom/android/server/OemPowerUI;Lcom/android/server/OemPowerUI$BatteryChargeInfo;)Lcom/android/server/OemPowerUI$ProtectType;

    move-result-object v2

    .line 251
    .local v2, "type":Lcom/android/server/OemPowerUI$ProtectType;
    invoke-direct {p0, v2}, Lcom/android/server/OemPowerUI$oemPowerUIReceiver;->showBatteryChargeDialog(Lcom/android/server/OemPowerUI$ProtectType;)V

    .line 254
    .end local v1    # "bcinfo":Lcom/android/server/OemPowerUI$BatteryChargeInfo;
    .end local v2    # "type":Lcom/android/server/OemPowerUI$ProtectType;
    :cond_0
    return-void
.end method
