.class Lcom/android/settings_ex/location/LocationMode$1;
.super Landroid/os/Handler;
.source "LocationMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/location/LocationMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/location/LocationMode;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/location/LocationMode;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings_ex/location/LocationMode$1;->this$0:Lcom/android/settings_ex/location/LocationMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode$1;->this$0:Lcom/android/settings_ex/location/LocationMode;

    # getter for: Lcom/android/settings_ex/location/LocationMode;->mIZat:Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/location/LocationMode;->access$000(Lcom/android/settings_ex/location/LocationMode;)Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 92
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/location/LocationMode$1;->this$0:Lcom/android/settings_ex/location/LocationMode;

    # getter for: Lcom/android/settings_ex/location/LocationMode;->mIZat:Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/location/LocationMode;->access$000(Lcom/android/settings_ex/location/LocationMode;)Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/location/WrappingIZatSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
