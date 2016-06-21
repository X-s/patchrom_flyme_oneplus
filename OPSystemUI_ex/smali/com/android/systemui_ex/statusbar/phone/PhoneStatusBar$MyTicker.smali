.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;
.super Lcom/android/systemui_ex/statusbar/phone/Ticker;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sb"    # Landroid/view/View;

    .prologue
    .line 3904
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .line 3905
    invoke-direct {p0, p2, p3}, Lcom/android/systemui_ex/statusbar/phone/Ticker;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 3906
    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z
    invoke-static {p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6400(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3907
    const-string v0, "PhoneStatusBar"

    const-string v1, "MyTicker instantiated with mTickerEnabled=false"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3909
    :cond_0
    return-void
.end method


# virtual methods
.method public tickerDone()V
    .locals 4

    .prologue
    .line 3923
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6400(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3929
    :goto_0
    return-void

    .line 3924
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3925
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6600(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3926
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const v2, 0x10a003a

    const/4 v3, 0x0

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3927
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6600(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const v2, 0x10a003c

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public tickerHalting()V
    .locals 4

    .prologue
    .line 3932
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6400(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3940
    :goto_0
    return-void

    .line 3933
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3934
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3935
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/high16 v2, 0x10a0000

    const/4 v3, 0x0

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3938
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6600(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public tickerStarting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3913
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6400(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3919
    :goto_0
    return-void

    .line 3914
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTicking:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6502(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Z)Z

    .line 3915
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3916
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6600(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3917
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6600(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const v2, 0x10a003e

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3918
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$MyTicker;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const v2, 0x10a003f

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    invoke-static {v1, v2, v3}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
