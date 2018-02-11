.class Lcom/android/settings_ex/DisplaySettings$1;
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
    .param p1, "this$0"    # Lcom/android/settings_ex/DisplaySettings;

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$1;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1343
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1344
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$1;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->-get2(Lcom/android/settings_ex/DisplaySettings;)Lcom/oneplus/settings/OneplusColorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/settings_ex/DisplaySettings$1;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v0}, Lcom/android/settings_ex/DisplaySettings;->-get2(Lcom/android/settings_ex/DisplaySettings;)Lcom/oneplus/settings/OneplusColorManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setNightModeLevel(I)V

    .line 1341
    :cond_0
    return-void
.end method
