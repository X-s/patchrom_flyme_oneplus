.class Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$1;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 280
    sub-int v0, p5, p3

    .line 281
    .local v0, "height":I
    sub-int v1, p9, p7

    .line 282
    .local v1, "oldHeight":I
    if-eq v0, v1, :cond_0

    .line 283
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/NotificationPanelView;->onScrollChanged()V

    .line 285
    :cond_0
    return-void
.end method
