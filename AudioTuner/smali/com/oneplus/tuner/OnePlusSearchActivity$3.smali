.class Lcom/oneplus/tuner/OnePlusSearchActivity$3;
.super Ljava/lang/Object;
.source "OnePlusSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OnePlusSearchActivity;->findViewsAndRegisteListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OnePlusSearchActivity;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$3;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$3;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$900(Lcom/oneplus/tuner/OnePlusSearchActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/oneplus/tuner/OnePlusSearchActivity$3;->this$0:Lcom/oneplus/tuner/OnePlusSearchActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusSearchActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/oneplus/tuner/OnePlusSearchActivity;->access$900(Lcom/oneplus/tuner/OnePlusSearchActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 162
    :cond_0
    return v2
.end method
