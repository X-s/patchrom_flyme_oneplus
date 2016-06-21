.class final Lcom/android/systemui_ex/power/PowerUI$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/power/PowerUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/power/PowerUI;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/power/PowerUI;Lcom/android/systemui_ex/power/PowerUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/power/PowerUI;
    .param p2, "x1"    # Lcom/android/systemui_ex/power/PowerUI$1;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/power/PowerUI$Receiver;-><init>(Lcom/android/systemui_ex/power/PowerUI;)V

    return-void
.end method

.method private updateSaverMode()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/systemui_ex/power/PowerUI;->access$200(Lcom/android/systemui_ex/power/PowerUI;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    # invokes: Lcom/android/systemui_ex/power/PowerUI;->setSaverMode(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui_ex/power/PowerUI;->access$300(Lcom/android/systemui_ex/power/PowerUI;Z)V

    .line 149
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    iget-object v1, v1, Lcom/android/systemui_ex/power/PowerUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui_ex/power/PowerUI;->access$100(Lcom/android/systemui_ex/power/PowerUI;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 144
    invoke-direct {p0}, Lcom/android/systemui_ex/power/PowerUI$Receiver;->updateSaverMode()V

    .line 145
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "action":Ljava/lang/String;
    const-string v12, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 155
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mBatteryLevel:I
    invoke-static {v12}, Lcom/android/systemui_ex/power/PowerUI;->access$400(Lcom/android/systemui_ex/power/PowerUI;)I

    move-result v4

    .line 156
    .local v4, "oldBatteryLevel":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    const-string v13, "level"

    const/16 v14, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    # setter for: Lcom/android/systemui_ex/power/PowerUI;->mBatteryLevel:I
    invoke-static {v12, v13}, Lcom/android/systemui_ex/power/PowerUI;->access$402(Lcom/android/systemui_ex/power/PowerUI;I)I

    .line 157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mBatteryStatus:I
    invoke-static {v12}, Lcom/android/systemui_ex/power/PowerUI;->access$500(Lcom/android/systemui_ex/power/PowerUI;)I

    move-result v5

    .line 158
    .local v5, "oldBatteryStatus":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    const-string v13, "status"

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    # setter for: Lcom/android/systemui_ex/power/PowerUI;->mBatteryStatus:I
    invoke-static {v12, v13}, Lcom/android/systemui_ex/power/PowerUI;->access$502(Lcom/android/systemui_ex/power/PowerUI;I)I

    .line 160
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mPlugType:I
    invoke-static {v12}, Lcom/android/systemui_ex/power/PowerUI;->access$600(Lcom/android/systemui_ex/power/PowerUI;)I

    move-result v8

    .line 161
    .local v8, "oldPlugType":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    const-string v13, "plugged"

    const/4 v14, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    # setter for: Lcom/android/systemui_ex/power/PowerUI;->mPlugType:I
    invoke-static {v12, v13}, Lcom/android/systemui_ex/power/PowerUI;->access$602(Lcom/android/systemui_ex/power/PowerUI;I)I

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mInvalidCharger:I
    invoke-static {v12}, Lcom/android/systemui_ex/power/PowerUI;->access$700(Lcom/android/systemui_ex/power/PowerUI;)I

    move-result v7

    .line 163
    .local v7, "oldInvalidCharger":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    const-string v13, "invalid_charger"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    # setter for: Lcom/android/systemui_ex/power/PowerUI;->mInvalidCharger:I
    invoke-static {v12, v13}, Lcom/android/systemui_ex/power/PowerUI;->access$702(Lcom/android/systemui_ex/power/PowerUI;I)I

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mPlugType:I
    invoke-static {v12}, Lcom/android/systemui_ex/power/PowerUI;->access$600(Lcom/android/systemui_ex/power/PowerUI;)I

    move-result v12

    if-eqz v12, :cond_1

    const/4 v11, 0x1

    .line 166
    .local v11, "plugged":Z
    :goto_0
    if-eqz v8, :cond_2

    const/4 v9, 0x1

    .line 168
    .local v9, "oldPlugged":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # invokes: Lcom/android/systemui_ex/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v12, v4}, Lcom/android/systemui_ex/power/PowerUI;->access$800(Lcom/android/systemui_ex/power/PowerUI;I)I

    move-result v6

    .line 169
    .local v6, "oldBucket":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mBatteryLevel:I
    invoke-static {v13}, Lcom/android/systemui_ex/power/PowerUI;->access$400(Lcom/android/systemui_ex/power/PowerUI;)I

    move-result v13

    # invokes: Lcom/android/systemui_ex/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v12, v13}, Lcom/android/systemui_ex/power/PowerUI;->access$800(Lcom/android/systemui_ex/power/PowerUI;I)I

    move-result v3

    .line 171
    .local v3, "bucket":I
    sget-boolean v12, Lcom/android/systemui_ex/power/PowerUI;->DEBUG:Z

    if-eqz v12, :cond_0

    .line 172
    const-string v12, "PowerUI"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "buckets   ....."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mLowBatteryAlertCloseLevel:I
    invoke-static {v14}, Lcom/android/systemui_ex/power/PowerUI;->access$900(Lcom/android/systemui_ex/power/PowerUI;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " .. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mLowBatteryReminderLevels:[I
    invoke-static {v14}, Lcom/android/systemui_ex/power/PowerUI;->access$1000(Lcom/android/systemui_ex/power/PowerUI;)[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " .. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mLowBatteryReminderLevels:[I
    invoke-static {v14}, Lcom/android/systemui_ex/power/PowerUI;->access$1000(Lcom/android/systemui_ex/power/PowerUI;)[I

    move-result-object v14

    const/4 v15, 0x1

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v12, "PowerUI"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "level          "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " --> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mBatteryLevel:I
    invoke-static {v14}, Lcom/android/systemui_ex/power/PowerUI;->access$400(Lcom/android/systemui_ex/power/PowerUI;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v12, "PowerUI"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "status         "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " --> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mBatteryStatus:I
    invoke-static {v14}, Lcom/android/systemui_ex/power/PowerUI;->access$500(Lcom/android/systemui_ex/power/PowerUI;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v12, "PowerUI"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "plugType       "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " --> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mPlugType:I
    invoke-static {v14}, Lcom/android/systemui_ex/power/PowerUI;->access$600(Lcom/android/systemui_ex/power/PowerUI;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v12, "PowerUI"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "invalidCharger "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " --> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mInvalidCharger:I
    invoke-static {v14}, Lcom/android/systemui_ex/power/PowerUI;->access$700(Lcom/android/systemui_ex/power/PowerUI;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v12, "PowerUI"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bucket         "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " --> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v12, "PowerUI"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "plugged        "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " --> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mWarnings:Lcom/android/systemui_ex/power/PowerUI$WarningsUI;
    invoke-static {v12}, Lcom/android/systemui_ex/power/PowerUI;->access$1200(Lcom/android/systemui_ex/power/PowerUI;)Lcom/android/systemui_ex/power/PowerUI$WarningsUI;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mBatteryLevel:I
    invoke-static {v13}, Lcom/android/systemui_ex/power/PowerUI;->access$400(Lcom/android/systemui_ex/power/PowerUI;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mScreenOffTime:J
    invoke-static {v14}, Lcom/android/systemui_ex/power/PowerUI;->access$1100(Lcom/android/systemui_ex/power/PowerUI;)J

    move-result-wide v14

    invoke-interface {v12, v13, v3, v14, v15}, Lcom/android/systemui_ex/power/PowerUI$WarningsUI;->update(IIJ)V

    .line 184
    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mInvalidCharger:I
    invoke-static {v12}, Lcom/android/systemui_ex/power/PowerUI;->access$700(Lcom/android/systemui_ex/power/PowerUI;)I

    move-result v12

    if-eqz v12, :cond_3

    .line 185
    const-string v12, "PowerUI"

    const-string v13, "showing invalid charger warning"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mWarnings:Lcom/android/systemui_ex/power/PowerUI$WarningsUI;
    invoke-static {v12}, Lcom/android/systemui_ex/power/PowerUI;->access$1200(Lcom/android/systemui_ex/power/PowerUI;)Lcom/android/systemui_ex/power/PowerUI$WarningsUI;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/systemui_ex/power/PowerUI$WarningsUI;->showInvalidChargerWarning()V

    .line 220
    .end local v3    # "bucket":I
    .end local v4    # "oldBatteryLevel":I
    .end local v5    # "oldBatteryStatus":I
    .end local v6    # "oldBucket":I
    .end local v7    # "oldInvalidCharger":I
    .end local v8    # "oldPlugType":I
    .end local v9    # "oldPlugged":Z
    .end local v11    # "plugged":Z
    :goto_2
    return-void

    .line 165
    .restart local v4    # "oldBatteryLevel":I
    .restart local v5    # "oldBatteryStatus":I
    .restart local v7    # "oldInvalidCharger":I
    .restart local v8    # "oldPlugType":I
    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 166
    .restart local v11    # "plugged":Z
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 188
    .restart local v3    # "bucket":I
    .restart local v6    # "oldBucket":I
    .restart local v9    # "oldPlugged":Z
    :cond_3
    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mInvalidCharger:I
    invoke-static {v12}, Lcom/android/systemui_ex/power/PowerUI;->access$700(Lcom/android/systemui_ex/power/PowerUI;)I

    move-result v12

    if-nez v12, :cond_7

    .line 189
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mWarnings:Lcom/android/systemui_ex/power/PowerUI$WarningsUI;
    invoke-static {v12}, Lcom/android/systemui_ex/power/PowerUI;->access$1200(Lcom/android/systemui_ex/power/PowerUI;)Lcom/android/systemui_ex/power/PowerUI$WarningsUI;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/systemui_ex/power/PowerUI$WarningsUI;->dismissInvalidChargerWarning()V

    .line 195
    :cond_4
    if-nez v11, :cond_9

    if-lt v3, v6, :cond_5

    if-eqz v9, :cond_9

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mBatteryStatus:I
    invoke-static {v12}, Lcom/android/systemui_ex/power/PowerUI;->access$500(Lcom/android/systemui_ex/power/PowerUI;)I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_9

    if-gez v3, :cond_9

    .line 200
    if-ne v3, v6, :cond_6

    if-eqz v9, :cond_8

    :cond_6
    const/4 v10, 0x1

    .line 201
    .local v10, "playSound":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mWarnings:Lcom/android/systemui_ex/power/PowerUI$WarningsUI;
    invoke-static {v12}, Lcom/android/systemui_ex/power/PowerUI;->access$1200(Lcom/android/systemui_ex/power/PowerUI;)Lcom/android/systemui_ex/power/PowerUI$WarningsUI;

    move-result-object v12

    invoke-interface {v12, v10}, Lcom/android/systemui_ex/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    goto :goto_2

    .line 190
    .end local v10    # "playSound":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mWarnings:Lcom/android/systemui_ex/power/PowerUI$WarningsUI;
    invoke-static {v12}, Lcom/android/systemui_ex/power/PowerUI;->access$1200(Lcom/android/systemui_ex/power/PowerUI;)Lcom/android/systemui_ex/power/PowerUI$WarningsUI;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/systemui_ex/power/PowerUI$WarningsUI;->isInvalidChargerWarningShowing()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_2

    .line 200
    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    .line 202
    :cond_9
    if-nez v11, :cond_a

    if-le v3, v6, :cond_b

    if-lez v3, :cond_b

    .line 203
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mWarnings:Lcom/android/systemui_ex/power/PowerUI$WarningsUI;
    invoke-static {v12}, Lcom/android/systemui_ex/power/PowerUI;->access$1200(Lcom/android/systemui_ex/power/PowerUI;)Lcom/android/systemui_ex/power/PowerUI$WarningsUI;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/systemui_ex/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto :goto_2

    .line 205
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mWarnings:Lcom/android/systemui_ex/power/PowerUI$WarningsUI;
    invoke-static {v12}, Lcom/android/systemui_ex/power/PowerUI;->access$1200(Lcom/android/systemui_ex/power/PowerUI;)Lcom/android/systemui_ex/power/PowerUI$WarningsUI;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/systemui_ex/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    goto :goto_2

    .line 207
    .end local v3    # "bucket":I
    .end local v4    # "oldBatteryLevel":I
    .end local v5    # "oldBatteryStatus":I
    .end local v6    # "oldBucket":I
    .end local v7    # "oldInvalidCharger":I
    .end local v8    # "oldPlugType":I
    .end local v9    # "oldPlugged":Z
    .end local v11    # "plugged":Z
    :cond_c
    const-string v12, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    # setter for: Lcom/android/systemui_ex/power/PowerUI;->mScreenOffTime:J
    invoke-static {v12, v14, v15}, Lcom/android/systemui_ex/power/PowerUI;->access$1102(Lcom/android/systemui_ex/power/PowerUI;J)J

    goto/16 :goto_2

    .line 209
    :cond_d
    const-string v12, "android.intent.action.SCREEN_ON"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 210
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    const-wide/16 v14, -0x1

    # setter for: Lcom/android/systemui_ex/power/PowerUI;->mScreenOffTime:J
    invoke-static {v12, v14, v15}, Lcom/android/systemui_ex/power/PowerUI;->access$1102(Lcom/android/systemui_ex/power/PowerUI;J)J

    goto/16 :goto_2

    .line 211
    :cond_e
    const-string v12, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    # getter for: Lcom/android/systemui_ex/power/PowerUI;->mWarnings:Lcom/android/systemui_ex/power/PowerUI$WarningsUI;
    invoke-static {v12}, Lcom/android/systemui_ex/power/PowerUI;->access$1200(Lcom/android/systemui_ex/power/PowerUI;)Lcom/android/systemui_ex/power/PowerUI$WarningsUI;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/systemui_ex/power/PowerUI$WarningsUI;->userSwitched()V

    goto/16 :goto_2

    .line 213
    :cond_f
    const-string v12, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 214
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/power/PowerUI$Receiver;->updateSaverMode()V

    goto/16 :goto_2

    .line 215
    :cond_10
    const-string v12, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 216
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/power/PowerUI$Receiver;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    const-string v13, "mode"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    # invokes: Lcom/android/systemui_ex/power/PowerUI;->setSaverMode(Z)V
    invoke-static {v12, v13}, Lcom/android/systemui_ex/power/PowerUI;->access$300(Lcom/android/systemui_ex/power/PowerUI;Z)V

    goto/16 :goto_2

    .line 218
    :cond_11
    const-string v12, "PowerUI"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unknown intent: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
