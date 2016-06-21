.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$HighlightHintViewGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HighlightHintViewGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 5615
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$HighlightHintViewGestureDetector;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p2, "x1"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;

    .prologue
    .line 5615
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$HighlightHintViewGestureDetector;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 5617
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$HighlightHintViewGestureDetector;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showHighlightHintOnStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5618
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$HighlightHintViewGestureDetector;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->launchHighLightHintAp()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$9700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 5619
    const/4 v0, 0x1

    .line 5621
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
