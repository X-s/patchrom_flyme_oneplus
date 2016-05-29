.class Lcom/android/settings_ex/DisplaySettings$4;
.super Landroid/os/Handler;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;)V
    .locals 0

    .prologue
    .line 900
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$4;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 905
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 907
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$4;->this$0:Lcom/android/settings_ex/DisplaySettings;

    # invokes: Lcom/android/settings_ex/DisplaySettings;->updateLauncher()V
    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->access$800(Lcom/android/settings_ex/DisplaySettings;)V

    .line 909
    return-void
.end method
