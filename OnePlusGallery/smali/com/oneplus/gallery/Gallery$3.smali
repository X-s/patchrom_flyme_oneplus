.class final Lcom/oneplus/gallery/Gallery$3;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    const-wide/16 v0, 0x0

    # invokes: Lcom/oneplus/gallery/Gallery;->checkInstances(J)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery/Gallery;->access$400(J)V

    .line 228
    return-void
.end method
