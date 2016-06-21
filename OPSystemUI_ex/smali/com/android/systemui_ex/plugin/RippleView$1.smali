.class Lcom/android/systemui_ex/plugin/RippleView$1;
.super Landroid/os/Handler;
.source "RippleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/plugin/RippleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/plugin/RippleView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/plugin/RippleView;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/systemui_ex/plugin/RippleView$1;->this$0:Lcom/android/systemui_ex/plugin/RippleView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 40
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView$1;->this$0:Lcom/android/systemui_ex/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/plugin/RippleView;->invalidate()V

    .line 41
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView$1;->this$0:Lcom/android/systemui_ex/plugin/RippleView;

    # getter for: Lcom/android/systemui_ex/plugin/RippleView;->isStartRipple:Z
    invoke-static {v0}, Lcom/android/systemui_ex/plugin/RippleView;->access$000(Lcom/android/systemui_ex/plugin/RippleView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView$1;->this$0:Lcom/android/systemui_ex/plugin/RippleView;

    # operator++ for: Lcom/android/systemui_ex/plugin/RippleView;->rippleFirstRadius:I
    invoke-static {v0}, Lcom/android/systemui_ex/plugin/RippleView;->access$108(Lcom/android/systemui_ex/plugin/RippleView;)I

    .line 43
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView$1;->this$0:Lcom/android/systemui_ex/plugin/RippleView;

    # getter for: Lcom/android/systemui_ex/plugin/RippleView;->rippleFirstRadius:I
    invoke-static {v0}, Lcom/android/systemui_ex/plugin/RippleView;->access$100(Lcom/android/systemui_ex/plugin/RippleView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui_ex/plugin/RippleView$1;->this$0:Lcom/android/systemui_ex/plugin/RippleView;

    # getter for: Lcom/android/systemui_ex/plugin/RippleView;->mDuration:F
    invoke-static {v1}, Lcom/android/systemui_ex/plugin/RippleView;->access$200(Lcom/android/systemui_ex/plugin/RippleView;)F

    move-result v1

    sget v2, Lcom/android/systemui_ex/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView$1;->this$0:Lcom/android/systemui_ex/plugin/RippleView;

    # setter for: Lcom/android/systemui_ex/plugin/RippleView;->rippleFirstRadius:I
    invoke-static {v0, v3}, Lcom/android/systemui_ex/plugin/RippleView;->access$102(Lcom/android/systemui_ex/plugin/RippleView;I)I

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView$1;->this$0:Lcom/android/systemui_ex/plugin/RippleView;

    # operator++ for: Lcom/android/systemui_ex/plugin/RippleView;->rippleSecendRadius:I
    invoke-static {v0}, Lcom/android/systemui_ex/plugin/RippleView;->access$308(Lcom/android/systemui_ex/plugin/RippleView;)I

    .line 47
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView$1;->this$0:Lcom/android/systemui_ex/plugin/RippleView;

    # getter for: Lcom/android/systemui_ex/plugin/RippleView;->rippleSecendRadius:I
    invoke-static {v0}, Lcom/android/systemui_ex/plugin/RippleView;->access$300(Lcom/android/systemui_ex/plugin/RippleView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui_ex/plugin/RippleView$1;->this$0:Lcom/android/systemui_ex/plugin/RippleView;

    # getter for: Lcom/android/systemui_ex/plugin/RippleView;->mDuration:F
    invoke-static {v1}, Lcom/android/systemui_ex/plugin/RippleView;->access$200(Lcom/android/systemui_ex/plugin/RippleView;)F

    move-result v1

    sget v2, Lcom/android/systemui_ex/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/android/systemui_ex/plugin/RippleView$1;->this$0:Lcom/android/systemui_ex/plugin/RippleView;

    # setter for: Lcom/android/systemui_ex/plugin/RippleView;->rippleSecendRadius:I
    invoke-static {v0, v3}, Lcom/android/systemui_ex/plugin/RippleView;->access$302(Lcom/android/systemui_ex/plugin/RippleView;I)I

    .line 50
    :cond_1
    sget v0, Lcom/android/systemui_ex/plugin/RippleView;->MESSAGE_DELAY:I

    int-to-long v0, v0

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/systemui_ex/plugin/RippleView$1;->sendEmptyMessageDelayed(IJ)Z

    .line 52
    :cond_2
    return-void
.end method
