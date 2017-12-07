.class Lcom/android/server/policy/OpGlobalActions$3;
.super Ljava/lang/Object;
.source "OpGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/ui/OpGlobalActionsView$OnViewTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OpGlobalActions;->initViewEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OpGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpGlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OpGlobalActions;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/server/policy/OpGlobalActions$3;->this$0:Lcom/android/server/policy/OpGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTouch(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 205
    .local v8, "action":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions$3;->this$0:Lcom/android/server/policy/OpGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/OpGlobalActions;->-get1(Lcom/android/server/policy/OpGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/policy/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions$3;->this$0:Lcom/android/server/policy/OpGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/OpGlobalActions;->-get4(Lcom/android/server/policy/OpGlobalActions;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions$3;->this$0:Lcom/android/server/policy/OpGlobalActions;

    iget-object v3, p0, Lcom/android/server/policy/OpGlobalActions$3;->this$0:Lcom/android/server/policy/OpGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/OpGlobalActions;->-get2(Lcom/android/server/policy/OpGlobalActions;)Lcom/android/server/policy/EnableAccessibilityController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/policy/OpGlobalActions;->-set0(Lcom/android/server/policy/OpGlobalActions;Z)Z

    .line 208
    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions$3;->this$0:Lcom/android/server/policy/OpGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/OpGlobalActions;->-get4(Lcom/android/server/policy/OpGlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 211
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    .line 210
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 212
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .end local v0    # "now":J
    :cond_0
    :goto_0
    if-ne v8, v10, :cond_2

    .line 220
    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions$3;->this$0:Lcom/android/server/policy/OpGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/OpGlobalActions;->-wrap0(Lcom/android/server/policy/OpGlobalActions;)V

    .line 221
    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions$3;->this$0:Lcom/android/server/policy/OpGlobalActions;

    invoke-static {v2, v9}, Lcom/android/server/policy/OpGlobalActions;->-set0(Lcom/android/server/policy/OpGlobalActions;Z)Z

    .line 222
    return v10

    .line 215
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions$3;->this$0:Lcom/android/server/policy/OpGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/OpGlobalActions;->-get2(Lcom/android/server/policy/OpGlobalActions;)Lcom/android/server/policy/EnableAccessibilityController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v2

    .line 219
    if-ne v8, v10, :cond_3

    .line 220
    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions$3;->this$0:Lcom/android/server/policy/OpGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/OpGlobalActions;->-wrap0(Lcom/android/server/policy/OpGlobalActions;)V

    .line 221
    iget-object v2, p0, Lcom/android/server/policy/OpGlobalActions$3;->this$0:Lcom/android/server/policy/OpGlobalActions;

    invoke-static {v2, v9}, Lcom/android/server/policy/OpGlobalActions;->-set0(Lcom/android/server/policy/OpGlobalActions;Z)Z

    .line 222
    return v10

    .line 224
    :cond_2
    return v9

    :cond_3
    return v9
.end method
