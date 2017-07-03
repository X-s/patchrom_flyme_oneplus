.class final Lcom/oneplus/gallery2/Gallery$3;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 232
    const-wide/16 v0, 0x0

    # invokes: Lcom/oneplus/gallery2/Gallery;->checkInstances(J)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/Gallery;->access$400(J)V

    .line 233
    return-void
.end method
