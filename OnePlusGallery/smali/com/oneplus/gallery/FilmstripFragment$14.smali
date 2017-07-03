.class Lcom/oneplus/gallery/FilmstripFragment$14;
.super Landroid/os/Handler;
.source "FilmstripFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/FilmstripFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/FilmstripFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/FilmstripFragment;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/oneplus/gallery/FilmstripFragment$14;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/oneplus/gallery/FilmstripFragment$14;->this$0:Lcom/oneplus/gallery/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery/FilmstripFragment;->handleAsyncMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery/FilmstripFragment;->access$3300(Lcom/oneplus/gallery/FilmstripFragment;Landroid/os/Message;)V

    .line 807
    return-void
.end method
