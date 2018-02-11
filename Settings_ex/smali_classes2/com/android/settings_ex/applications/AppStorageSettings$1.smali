.class Lcom/android/settings_ex/applications/AppStorageSettings$1;
.super Landroid/os/Handler;
.source "AppStorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppStorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/AppStorageSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/applications/AppStorageSettings;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppStorageSettings$1;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings$1;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppStorageSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 611
    return-void

    .line 613
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 609
    :goto_0
    :pswitch_0
    return-void

    .line 615
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings$1;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    invoke-static {v0, p1}, Lcom/android/settings_ex/applications/AppStorageSettings;->-wrap1(Lcom/android/settings_ex/applications/AppStorageSettings;Landroid/os/Message;)V

    goto :goto_0

    .line 619
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppStorageSettings$1;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    iget-object v0, v0, Lcom/android/settings_ex/applications/AppStorageSettings;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppStorageSettings$1;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    iget-object v1, v1, Lcom/android/settings_ex/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/applications/AppStorageSettings$1;->this$0:Lcom/android/settings_ex/applications/AppStorageSettings;

    iget v2, v2, Lcom/android/settings_ex/applications/AppStorageSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_0

    .line 613
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
