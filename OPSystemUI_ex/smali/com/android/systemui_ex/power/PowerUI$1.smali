.class Lcom/android/systemui_ex/power/PowerUI$1;
.super Landroid/database/ContentObserver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/power/PowerUI;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/power/PowerUI;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/systemui_ex/power/PowerUI$1;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui_ex/power/PowerUI$1;->this$0:Lcom/android/systemui_ex/power/PowerUI;

    invoke-virtual {v0}, Lcom/android/systemui_ex/power/PowerUI;->updateBatteryWarningLevels()V

    .line 69
    return-void
.end method
