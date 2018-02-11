.class Lcom/android/settings_ex/fuelgauge/BatterySaverPreference$1;
.super Landroid/database/ContentObserver;
.source "BatterySaverPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference$1;->this$0:Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference$1;->this$0:Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;

    invoke-static {v0}, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->-wrap0(Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;)V

    .line 74
    return-void
.end method
