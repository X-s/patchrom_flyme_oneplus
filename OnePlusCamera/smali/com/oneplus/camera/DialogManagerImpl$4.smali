.class Lcom/oneplus/camera/DialogManagerImpl$4;
.super Ljava/lang/Object;
.source "DialogManagerImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/DialogManagerImpl;->showDialog(Lcom/oneplus/camera/DialogManagerImpl$DialogHandle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/DialogManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/DialogManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/DialogManagerImpl;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/oneplus/camera/DialogManagerImpl$4;->this$0:Lcom/oneplus/camera/DialogManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method
