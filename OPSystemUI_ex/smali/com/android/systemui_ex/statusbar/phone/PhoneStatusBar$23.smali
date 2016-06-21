.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$23;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 1541
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1543
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1557
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1545
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->shouldDisableNavbarGestures()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$4600(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$4500(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1547
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$4800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$4500(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$4700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1553
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$4900(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$4500(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1554
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->awakenDreams()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$4300(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    goto :goto_0

    .line 1543
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
