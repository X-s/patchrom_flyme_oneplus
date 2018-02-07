.class Lcom/android/settings_ex/CryptKeeper$3;
.super Landroid/os/Handler;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeper$3;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 356
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 355
    :goto_0
    return-void

    .line 358
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper$3;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ex/CryptKeeper;->-wrap12(Lcom/android/settings_ex/CryptKeeper;)V

    goto :goto_0

    .line 362
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper$3;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ex/CryptKeeper;->-wrap5(Lcom/android/settings_ex/CryptKeeper;)V

    goto :goto_0

    .line 366
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper$3;->this$0:Lcom/android/settings_ex/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ex/CryptKeeper;->-wrap11(Lcom/android/settings_ex/CryptKeeper;)V

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
