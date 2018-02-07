.class Lcom/android/settings_ex/Lte4GEnabler$MyHandler;
.super Landroid/os/Handler;
.source "Lte4GEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/Lte4GEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/Lte4GEnabler;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/Lte4GEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/Lte4GEnabler;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/settings_ex/Lte4GEnabler$MyHandler;->this$0:Lcom/android/settings_ex/Lte4GEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/Lte4GEnabler;Lcom/android/settings_ex/Lte4GEnabler$MyHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/Lte4GEnabler;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/Lte4GEnabler$MyHandler;-><init>(Lcom/android/settings_ex/Lte4GEnabler;)V

    return-void
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/Lte4GEnabler$MyHandler;->this$0:Lcom/android/settings_ex/Lte4GEnabler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/Lte4GEnabler;->-set0(Lcom/android/settings_ex/Lte4GEnabler;Z)Z

    .line 331
    const-string/jumbo v0, "Lte4GEnabler"

    const-string/jumbo v1, "handleSetPreferredNetworkTypeResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/android/settings_ex/Lte4GEnabler$MyHandler;->this$0:Lcom/android/settings_ex/Lte4GEnabler;

    invoke-static {v0}, Lcom/android/settings_ex/Lte4GEnabler;->-wrap2(Lcom/android/settings_ex/Lte4GEnabler;)V

    .line 328
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 321
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 320
    :goto_0
    return-void

    .line 323
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/Lte4GEnabler$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
