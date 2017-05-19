.class final Landroid/app/SystemServiceRegistry$70;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Lcom/oneplus/longshot/LongScreenshotManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 727
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Lcom/oneplus/longshot/LongScreenshotManager;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 730
    invoke-static {}, Lcom/oneplus/longshot/LongScreenshotManager;->getInstance()Lcom/oneplus/longshot/LongScreenshotManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/app/ContextImpl;

    .prologue
    .line 727
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$70;->createService(Landroid/app/ContextImpl;)Lcom/oneplus/longshot/LongScreenshotManager;

    move-result-object v0

    return-object v0
.end method
