.class public final Lcom/oneplus/gallery/OPGalleryApplication;
.super Lcom/oneplus/gallery/GalleryApplication;
.source "OPGalleryApplication.java"


# static fields
.field private static final COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;


# instance fields
.field private volatile m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    const/4 v1, 0x0

    new-instance v2, Lcom/oneplus/gallery/AppTrackerBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery/AppTrackerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/oneplus/gallery/cache/CacheManagerBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery/cache/CacheManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/oneplus/gallery/media/DirectoryMediaSetManagerBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery/media/DirectoryMediaSetManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/oneplus/gallery/media/MediaManagerBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery/media/MediaManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/oneplus/base/PeriodicMessageDispatcherBuilder;

    invoke-direct {v2}, Lcom/oneplus/base/PeriodicMessageDispatcherBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/oneplus/base/PermissionManagerBuilder;

    invoke-direct {v2}, Lcom/oneplus/base/PermissionManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/oneplus/gallery/media/ThumbnailImageManagerBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery/media/ThumbnailImageManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery/OPGalleryApplication;->COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryApplication;-><init>()V

    .line 41
    sget-object v0, Lcom/oneplus/gallery/OPGalleryApplication;->COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/OPGalleryApplication;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V

    .line 42
    const-wide/32 v0, 0x15e00000

    const-wide/32 v2, 0x1c200000

    const-wide/32 v4, 0x1e000000

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/MemoryMonitor;->start(JJJ)V

    .line 43
    return-void
.end method


# virtual methods
.method public createGallery()Lcom/oneplus/gallery/Gallery;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/oneplus/gallery/OPGallery;

    invoke-direct {v0}, Lcom/oneplus/gallery/OPGallery;-><init>()V

    return-object v0
.end method

.method public findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TComponent::",
            "Lcom/oneplus/base/component/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TTComponent;>;)TTComponent;"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TTComponent;>;"
    const-class v0, Lcom/oneplus/gallery/media/MediaManager;

    if-eq p1, v0, :cond_0

    const-class v0, Lcom/oneplus/gallery/media/OPMediaManager;

    if-ne p1, v0, :cond_2

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryApplication;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    if-nez v0, :cond_1

    .line 62
    const-class v0, Lcom/oneplus/gallery/media/OPMediaManager;

    invoke-super {p0, v0}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/OPMediaManager;

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryApplication;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryApplication;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    .line 65
    :goto_0
    return-object v0

    :cond_2
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryApplication;->m_MediaManager:Lcom/oneplus/gallery/media/OPMediaManager;

    .line 77
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryApplication;->onTerminate()V

    .line 78
    return-void
.end method
