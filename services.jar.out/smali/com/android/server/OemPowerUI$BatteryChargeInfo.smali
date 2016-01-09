.class public Lcom/android/server/OemPowerUI$BatteryChargeInfo;
.super Ljava/lang/Object;
.source "OemPowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemPowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatteryChargeInfo"
.end annotation


# instance fields
.field private health:I

.field private icon_small:I

.field private level:I

.field private plugged:I

.field private present:Z

.field private scale:I

.field private status:I

.field private temperature:I

.field final synthetic this$0:Lcom/android/server/OemPowerUI;

.field private voltage:I


# direct methods
.method constructor <init>(Lcom/android/server/OemPowerUI;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 98
    iput-object p1, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->this$0:Lcom/android/server/OemPowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->status:I

    .line 100
    iput v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->health:I

    .line 101
    iput-boolean v1, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->present:Z

    .line 102
    iput v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->level:I

    .line 103
    iput v1, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->scale:I

    .line 104
    iput v1, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->icon_small:I

    .line 105
    iput v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->plugged:I

    .line 106
    iput v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->voltage:I

    .line 107
    iput v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->temperature:I

    .line 108
    return-void
.end method

.method constructor <init>(Lcom/android/server/OemPowerUI;Lcom/android/server/OemPowerUI$BatteryChargeInfo;)V
    .locals 1
    .param p2, "BCInfo"    # Lcom/android/server/OemPowerUI$BatteryChargeInfo;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->this$0:Lcom/android/server/OemPowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    if-eqz p2, :cond_0

    .line 112
    iget v0, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->status:I

    iput v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->status:I

    .line 113
    iget v0, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->health:I

    iput v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->health:I

    .line 114
    iget-boolean v0, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->present:Z

    iput-boolean v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->present:Z

    .line 115
    iget v0, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->level:I

    iput v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->level:I

    .line 116
    iget v0, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->scale:I

    iput v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->scale:I

    .line 117
    iget v0, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->icon_small:I

    iput v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->icon_small:I

    .line 118
    iget v0, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->plugged:I

    iput v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->plugged:I

    .line 119
    iget v0, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->voltage:I

    iput v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->voltage:I

    .line 120
    iget v0, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->temperature:I

    iput v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->temperature:I

    .line 122
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemPowerUI$BatteryChargeInfo;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->plugged:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemPowerUI$BatteryChargeInfo;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->status:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemPowerUI$BatteryChargeInfo;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->health:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemPowerUI$BatteryChargeInfo;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->level:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemPowerUI$BatteryChargeInfo;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->temperature:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/OemPowerUI$BatteryChargeInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemPowerUI$BatteryChargeInfo;

    .prologue
    .line 87
    iget v0, p0, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->voltage:I

    return v0
.end method


# virtual methods
.method public getBatteryChargeInfofromIntent(Landroid/content/Intent;Lcom/android/server/OemPowerUI$BatteryChargeInfo;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "BCInfo"    # Lcom/android/server/OemPowerUI$BatteryChargeInfo;

    .prologue
    const/4 v4, 0x0

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "ret":Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v0

    .line 144
    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_0
    return v1

    .line 129
    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    const-string v2, "status"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->status:I

    .line 132
    const-string v2, "health"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->health:I

    .line 133
    const-string v2, "present"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->present:Z

    .line 134
    const-string v2, "level"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->level:I

    .line 135
    const-string v2, "scale"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->scale:I

    .line 136
    const-string v2, "icon-small"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->icon_small:I

    .line 137
    const-string v2, "plugged"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->plugged:I

    .line 138
    const-string v2, "voltage"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->voltage:I

    .line 139
    const-string v2, "temperature"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lcom/android/server/OemPowerUI$BatteryChargeInfo;->temperature:I

    .line 141
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 144
    .restart local v1    # "ret":I
    goto :goto_0
.end method
