.class Lcom/oneplus/widget/FilmstripView$3;
.super Landroid/os/Handler;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/widget/FilmstripView;->setupHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/widget/FilmstripView;


# direct methods
.method constructor <init>(Lcom/oneplus/widget/FilmstripView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/widget/FilmstripView;

    .prologue
    .line 1717
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView$3;->this$0:Lcom/oneplus/widget/FilmstripView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$3;->this$0:Lcom/oneplus/widget/FilmstripView;

    invoke-static {v0, p1}, Lcom/oneplus/widget/FilmstripView;->-wrap0(Lcom/oneplus/widget/FilmstripView;Landroid/os/Message;)V

    .line 1720
    return-void
.end method
