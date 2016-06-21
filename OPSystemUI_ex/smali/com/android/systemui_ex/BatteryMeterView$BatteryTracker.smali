.class Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;
.super Ljava/lang/Object;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryTracker"
.end annotation


# instance fields
.field charging:Z

.field level:I

.field plugged:Z

.field testmode:Z

.field final synthetic this$0:Lcom/android/systemui_ex/BatteryMeterView;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/BatteryMeterView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iput-object p1, p0, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->this$0:Lcom/android/systemui_ex/BatteryMeterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->level:I

    .line 119
    iput-boolean v1, p0, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 120
    iput-boolean v1, p0, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->testmode:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;->charging:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/BatteryMeterView;Lcom/android/systemui_ex/BatteryMeterView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/BatteryMeterView;
    .param p2, "x1"    # Lcom/android/systemui_ex/BatteryMeterView$1;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui_ex/BatteryMeterView;)V

    return-void
.end method
