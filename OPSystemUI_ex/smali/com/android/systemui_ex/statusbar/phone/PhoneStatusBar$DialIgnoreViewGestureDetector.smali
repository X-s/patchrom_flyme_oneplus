.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DialIgnoreViewGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialIgnoreViewGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 3328
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DialIgnoreViewGestureDetector;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p2, "x1"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$1;

    .prologue
    .line 3328
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DialIgnoreViewGestureDetector;-><init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 3330
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DialIgnoreViewGestureDetector;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->launchInCallUI()V

    .line 3331
    const/4 v0, 0x1

    return v0
.end method
