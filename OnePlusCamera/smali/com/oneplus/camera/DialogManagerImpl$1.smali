.class Lcom/oneplus/camera/DialogManagerImpl$1;
.super Ljava/lang/Object;
.source "DialogManagerImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/DialogManagerImpl;
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
    .line 43
    iput-object p1, p0, Lcom/oneplus/camera/DialogManagerImpl$1;->this$0:Lcom/oneplus/camera/DialogManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 48
    sparse-switch p2, :sswitch_data_0

    .line 56
    const/4 v0, 0x0

    return v0

    .line 54
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
