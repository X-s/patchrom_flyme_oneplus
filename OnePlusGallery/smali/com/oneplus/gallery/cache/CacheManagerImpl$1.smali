.class Lcom/oneplus/gallery/cache/CacheManagerImpl$1;
.super Lcom/oneplus/base/Handle;
.source "CacheManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/cache/CacheManagerImpl;->activate(I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/cache/CacheManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/cache/CacheManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oneplus/gallery/cache/CacheManagerImpl$1;->this$0:Lcom/oneplus/gallery/cache/CacheManagerImpl;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oneplus/gallery/cache/CacheManagerImpl$1;->this$0:Lcom/oneplus/gallery/cache/CacheManagerImpl;

    # invokes: Lcom/oneplus/gallery/cache/CacheManagerImpl;->deactivate(Lcom/oneplus/base/Handle;)V
    invoke-static {v0, p0}, Lcom/oneplus/gallery/cache/CacheManagerImpl;->access$000(Lcom/oneplus/gallery/cache/CacheManagerImpl;Lcom/oneplus/base/Handle;)V

    .line 68
    return-void
.end method
