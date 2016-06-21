.class Lcom/android/systemui_ex/plugin/LSState$MyUIHandler;
.super Landroid/os/Handler;
.source "LSState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/plugin/LSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/plugin/LSState;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/plugin/LSState;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/systemui_ex/plugin/LSState$MyUIHandler;->this$0:Lcom/android/systemui_ex/plugin/LSState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/plugin/LSState;Lcom/android/systemui_ex/plugin/LSState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/plugin/LSState;
    .param p2, "x1"    # Lcom/android/systemui_ex/plugin/LSState$1;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/plugin/LSState$MyUIHandler;-><init>(Lcom/android/systemui_ex/plugin/LSState;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    .line 187
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui_ex/plugin/LSState$MyUIHandler;->this$0:Lcom/android/systemui_ex/plugin/LSState;

    monitor-enter v2

    .line 190
    :try_start_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
