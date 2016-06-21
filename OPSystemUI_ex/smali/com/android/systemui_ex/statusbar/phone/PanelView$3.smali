.class Lcom/android/systemui_ex/statusbar/phone/PanelView$3;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PanelView;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 500
    sget-object v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v1, "finish wallpaper animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setKeyguardWallpaperAnimating(Z)V

    .line 502
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PanelView$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/PanelView;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showBouncer()V

    .line 503
    return-void
.end method
