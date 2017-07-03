.class public final Lcom/oneplus/gallery2/OPGalleryApplication;
.super Lcom/oneplus/gallery2/GalleryApplication;
.source "OPGalleryApplication.java"


# static fields
.field private static final COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;


# instance fields
.field private volatile m_ContentObserver:Lcom/oneplus/gallery2/media/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/oneplus/base/component/ComponentBuilder;

    const/4 v1, 0x0

    new-instance v2, Lcom/oneplus/gallery2/media/AlbumManagerBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery2/media/AlbumManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/oneplus/gallery2/AppTrackerBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery2/AppTrackerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/oneplus/gallery2/CacheManagerBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery2/CacheManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/oneplus/gallery2/media/ContentObserverBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery2/media/ContentObserverBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/oneplus/gallery/media/DirectoryMediaSetManagerBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery/media/DirectoryMediaSetManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/oneplus/gallery2/location/LocationManagerBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery2/location/LocationManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManagerBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery2/media/MediaStoreDirectoryManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSourceBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSourceBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/oneplus/base/PeriodicMessageDispatcherBuilder;

    invoke-direct {v2}, Lcom/oneplus/base/PeriodicMessageDispatcherBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/oneplus/base/PermissionManagerBuilder;

    invoke-direct {v2}, Lcom/oneplus/base/PermissionManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/oneplus/gallery2/media/SystemMediaSetManagerBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery2/media/SystemMediaSetManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/oneplus/gallery2/media/TempMediaSourceBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery2/media/TempMediaSourceBuilder;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/oneplus/gallery2/media/ThumbnailImageManagerBuilder;

    invoke-direct {v2}, Lcom/oneplus/gallery2/media/ThumbnailImageManagerBuilder;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryApplication;->COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryApplication;-><init>()V

    .line 51
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryApplication;->COMPONENT_BUILDERS:[Lcom/oneplus/base/component/ComponentBuilder;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/OPGalleryApplication;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V

    .line 52
    const-wide/32 v0, 0x15e00000

    const-wide/32 v2, 0x1c200000

    const-wide/32 v4, 0x1e000000

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/MemoryMonitor;->start(JJJ)V

    .line 53
    return-void
.end method


# virtual methods
.method public createGallery()Lcom/oneplus/gallery2/Gallery;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/oneplus/gallery2/OPGallery;

    invoke-direct {v0}, Lcom/oneplus/gallery2/OPGallery;-><init>()V

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
    .line 69
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TTComponent;>;"
    const-class v0, Lcom/oneplus/gallery2/media/ContentObserver;

    if-ne p1, v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryApplication;->m_ContentObserver:Lcom/oneplus/gallery2/media/ContentObserver;

    if-nez v0, :cond_0

    .line 72
    const-class v0, Lcom/oneplus/gallery2/media/ContentObserver;

    invoke-super {p0, v0}, Lcom/oneplus/gallery2/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/ContentObserver;

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryApplication;->m_ContentObserver:Lcom/oneplus/gallery2/media/ContentObserver;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryApplication;->m_ContentObserver:Lcom/oneplus/gallery2/media/ContentObserver;

    .line 75
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryApplication;->onTerminate()V

    .line 85
    return-void
.end method
