.class Lcom/android/systemui_ex/plugin/PreventModeCtrl$ProximityHandler;
.super Landroid/os/Handler;
.source "PreventModeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/plugin/PreventModeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximityHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$ProximityHandler;->this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/plugin/PreventModeCtrl;Lcom/android/systemui_ex/plugin/PreventModeCtrl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/plugin/PreventModeCtrl;
    .param p2, "x1"    # Lcom/android/systemui_ex/plugin/PreventModeCtrl$1;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/plugin/PreventModeCtrl$ProximityHandler;-><init>(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$ProximityHandler;->this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    # getter for: Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->access$100(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$ProximityHandler;->this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    # invokes: Lcom/android/systemui_ex/plugin/PreventModeCtrl;->enableProximitySensorInternal()V
    invoke-static {v0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->access$600(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)V

    .line 173
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 176
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$ProximityHandler;->this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    # getter for: Lcom/android/systemui_ex/plugin/PreventModeCtrl;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->access$100(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 177
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/PreventModeCtrl$ProximityHandler;->this$0:Lcom/android/systemui_ex/plugin/PreventModeCtrl;

    # invokes: Lcom/android/systemui_ex/plugin/PreventModeCtrl;->disableProximitySensorInternal()V
    invoke-static {v0}, Lcom/android/systemui_ex/plugin/PreventModeCtrl;->access$500(Lcom/android/systemui_ex/plugin/PreventModeCtrl;)V

    .line 178
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
