.class Lcom/android/internal/policy/impl/UcGlobalActions$19;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/UcPowerViewContainer$OnMyTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;->initViewEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UcGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0

    .prologue
    .line 1786
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$19;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1789
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$19;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mTouchValid:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$2600(Lcom/android/internal/policy/impl/UcGlobalActions;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1790
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$19;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # setter for: Lcom/android/internal/policy/impl/UcGlobalActions;->isValid:Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$4502(Lcom/android/internal/policy/impl/UcGlobalActions;Z)Z

    .line 1795
    :goto_0
    return v0

    .line 1794
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$19;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mGesture:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$4600(Lcom/android/internal/policy/impl/UcGlobalActions;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1795
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcGlobalActions$19;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/UcGlobalActions;->onMyTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
