.class Lcom/oneplus/widget/FilmstripView$Adapter$1;
.super Landroid/os/Handler;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/widget/FilmstripView$Adapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/widget/FilmstripView$Adapter;


# direct methods
.method constructor <init>(Lcom/oneplus/widget/FilmstripView$Adapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView$Adapter$1;->this$1:Lcom/oneplus/widget/FilmstripView$Adapter;

    .line 135
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$Adapter$1;->this$1:Lcom/oneplus/widget/FilmstripView$Adapter;

    # invokes: Lcom/oneplus/widget/FilmstripView$Adapter;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/oneplus/widget/FilmstripView$Adapter;->access$0(Lcom/oneplus/widget/FilmstripView$Adapter;Landroid/os/Message;)V

    .line 141
    return-void
.end method
