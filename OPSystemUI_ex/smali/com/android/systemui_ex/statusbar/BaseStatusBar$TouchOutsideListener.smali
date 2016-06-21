.class public Lcom/android/systemui_ex/statusbar/BaseStatusBar$TouchOutsideListener;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchOutsideListener"
.end annotation


# instance fields
.field private mMsg:I

.field private mPanel:Lcom/android/systemui_ex/statusbar/StatusBarPanel;

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;ILcom/android/systemui_ex/statusbar/StatusBarPanel;)V
    .locals 0
    .param p2, "msg"    # I
    .param p3, "panel"    # Lcom/android/systemui_ex/statusbar/StatusBarPanel;

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$TouchOutsideListener;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1501
    iput p2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$TouchOutsideListener;->mMsg:I

    .line 1502
    iput-object p3, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$TouchOutsideListener;->mPanel:Lcom/android/systemui_ex/statusbar/StatusBarPanel;

    .line 1503
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1506
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1507
    .local v0, "action":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$TouchOutsideListener;->mPanel:Lcom/android/systemui_ex/statusbar/StatusBarPanel;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui_ex/statusbar/StatusBarPanel;->isInContentArea(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1510
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$TouchOutsideListener;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$TouchOutsideListener;->mMsg:I

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1511
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$TouchOutsideListener;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$TouchOutsideListener;->mMsg:I

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1512
    const/4 v1, 0x1

    .line 1514
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
