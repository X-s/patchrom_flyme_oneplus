.class Lcom/oneplus/gallery2/editor/NetEaseFilter$8;
.super Landroid/os/Handler;
.source "NetEaseFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/NetEaseFilter;->onPrepare(Lcom/oneplus/gallery2/media/PhotoMedia;Landroid/graphics/Bitmap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/NetEaseFilter;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 977
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$8;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 981
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$8;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->handleMessage(Landroid/os/Message;)V

    .line 982
    return-void
.end method
