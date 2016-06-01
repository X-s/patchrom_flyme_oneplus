.class final Lcom/oneplus/camera/media/ResolutionManagerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "ResolutionManagerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/media/ResolutionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;
    }
.end annotation


# static fields
.field private static final MAX_VIDEO_DURATION_4K:J = 0x258L


# instance fields
.field private m_DefaultPhotoResSelector:Lcom/oneplus/camera/media/PhotoResolutionSelector;

.field private m_DefaultVideoResSelector:Lcom/oneplus/camera/media/VideoResolutionSelector;

.field private final m_PhotoResSelectorHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_PhotoResolution:Lcom/oneplus/camera/media/Resolution;

.field private final m_VideoResSelectorHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_VideoResolution:Lcom/oneplus/camera/media/Resolution;

.field private m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 3
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v2, 0x1

    .line 65
    const-string v0, "Resolution Manager"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_PhotoResSelectorHandles:Ljava/util/LinkedList;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_VideoResSelectorHandles:Ljava/util/LinkedList;

    .line 66
    sget-object v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_PHOTO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 67
    sget-object v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 68
    sget-object v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 69
    sget-object v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_MAX_VIDEO_FILE_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 70
    sget-object v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_VIDEO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 71
    sget-object v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/media/ResolutionManagerImpl;Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/media/ResolutionManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;
    .param p2, "x2"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->restoreResolutionSelector(Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;I)V

    return-void
.end method

.method static synthetic access$102(Lcom/oneplus/camera/media/ResolutionManagerImpl;Lcom/oneplus/camera/ui/Viewfinder;)Lcom/oneplus/camera/ui/Viewfinder;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/media/ResolutionManagerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/ui/Viewfinder;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/camera/media/ResolutionManagerImpl;ZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/media/ResolutionManagerImpl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->selectResolutions(ZZ)Z

    move-result v0

    return v0
.end method

.method private getPhotoResolutionSelector()Lcom/oneplus/camera/media/PhotoResolutionSelector;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_PhotoResSelectorHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_DefaultPhotoResSelector:Lcom/oneplus/camera/media/PhotoResolutionSelector;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_PhotoResSelectorHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;

    iget-object v0, v0, Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;->selector:Lcom/oneplus/camera/media/ResolutionSelector;

    check-cast v0, Lcom/oneplus/camera/media/PhotoResolutionSelector;

    goto :goto_0
.end method

.method private getPreviewContainerSize()Landroid/util/Size;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v1, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_CONTAINER_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 102
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/ScreenSize;

    invoke-virtual {v0}, Lcom/oneplus/base/ScreenSize;->toSize()Landroid/util/Size;

    move-result-object v0

    goto :goto_0
.end method

.method private getVideoResolutionSelector()Lcom/oneplus/camera/media/VideoResolutionSelector;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_VideoResSelectorHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_DefaultVideoResSelector:Lcom/oneplus/camera/media/VideoResolutionSelector;

    .line 111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_VideoResSelectorHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;

    iget-object v0, v0, Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;->selector:Lcom/oneplus/camera/media/ResolutionSelector;

    check-cast v0, Lcom/oneplus/camera/media/VideoResolutionSelector;

    goto :goto_0
.end method

.method private restoreResolutionSelector(Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;I)V
    .locals 8
    .param p1, "handle"    # Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->verifyAccess()V

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "syncPhotoRes":Z
    const/4 v1, 0x0

    .line 181
    .local v1, "syncVideoRes":Z
    iget-object v4, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "restoreResolutionSelector() - Selector : "

    iget-object v6, p1, Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;->selector:Lcom/oneplus/camera/media/ResolutionSelector;

    const-string v7, ", handle : "

    invoke-static {v4, v5, v6, v7, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    iget-object v4, p1, Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;->selector:Lcom/oneplus/camera/media/ResolutionSelector;

    instance-of v4, v4, Lcom/oneplus/camera/media/PhotoResolutionSelector;

    if-eqz v4, :cond_0

    .line 184
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_2

    move v0, v2

    .line 185
    :goto_0
    iget-object v4, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_PhotoResSelectorHandles:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    iget-object v4, p1, Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;->selector:Lcom/oneplus/camera/media/ResolutionSelector;

    instance-of v4, v4, Lcom/oneplus/camera/media/VideoResolutionSelector;

    if-eqz v4, :cond_1

    .line 189
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_3

    move v1, v2

    .line 190
    :goto_1
    iget-object v2, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_VideoResSelectorHandles:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 194
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->selectResolutions(ZZ)Z

    .line 195
    return-void

    :cond_2
    move v0, v3

    .line 184
    goto :goto_0

    :cond_3
    move v1, v3

    .line 189
    goto :goto_1
.end method

.method private selectResolutions(Lcom/oneplus/camera/media/ResolutionSelector;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;
    .locals 5
    .param p1, "selector"    # Lcom/oneplus/camera/media/ResolutionSelector;
    .param p2, "camera"    # Lcom/oneplus/camera/Camera;
    .param p3, "settings"    # Lcom/oneplus/camera/Settings;
    .param p4, "restriction"    # Lcom/oneplus/camera/media/ResolutionSelector$Restriction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/media/ResolutionSelector;",
            "Lcom/oneplus/camera/Camera;",
            "Lcom/oneplus/camera/Settings;",
            "Lcom/oneplus/camera/media/ResolutionSelector$Restriction;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/media/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    if-nez p2, :cond_1

    .line 292
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 310
    :cond_0
    :goto_0
    return-object v1

    .line 296
    :cond_1
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Lcom/oneplus/camera/media/ResolutionSelector;->selectResolutions(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;

    move-result-object v1

    .line 297
    .local v1, "resolutions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    if-nez v1, :cond_2

    .line 299
    iget-object v2, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectResolutions() - Got Null resolution list from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "selectResolutions() - Empty resolution list"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    .end local v1    # "resolutions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    :catch_0
    move-exception v0

    .line 305
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "selectResolutions() - Fail to select resolutions"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .restart local v1    # "resolutions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    goto :goto_1
.end method

.method private selectResolutions(ZZ)Z
    .locals 19
    .param p1, "preservePhotoRes"    # Z
    .param p2, "preserveVideoRes"    # Z

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-nez v7, :cond_0

    .line 204
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    const-string v8, "selectResolutions() - No Viewfinder"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v7, 0x0

    .line 283
    :goto_0
    return v7

    .line 208
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "selectResolutions("

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ", "

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, ")"

    invoke-static/range {v2 .. v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    sget-object v8, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v7, v8}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/Camera;

    .line 212
    .local v3, "camera":Lcom/oneplus/camera/Camera;
    if-nez v3, :cond_1

    .line 213
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    const-string v8, "selectResolutions() - No camera"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v7, 0x0

    goto :goto_0

    .line 218
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getPreviewContainerSize()Landroid/util/Size;

    move-result-object v16

    .line 221
    .local v16, "previewContainerSize":Landroid/util/Size;
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getPhotoResolutionSelector()Lcom/oneplus/camera/media/PhotoResolutionSelector;

    move-result-object v2

    .line 222
    .local v2, "photoResSelector":Lcom/oneplus/camera/media/PhotoResolutionSelector;
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getVideoResolutionSelector()Lcom/oneplus/camera/media/VideoResolutionSelector;

    move-result-object v18

    .line 225
    .local v18, "videoResSelector":Lcom/oneplus/camera/media/VideoResolutionSelector;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getSettings()Lcom/oneplus/camera/Settings;

    move-result-object v4

    .line 226
    .local v4, "settings":Lcom/oneplus/camera/Settings;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v7}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->selectResolutions(Lcom/oneplus/camera/media/ResolutionSelector;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;

    move-result-object v5

    .line 227
    .local v5, "photoResolutions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_PhotoResolution:Lcom/oneplus/camera/media/Resolution;

    .line 230
    .local v13, "currentPhotoResolution":Lcom/oneplus/camera/media/Resolution;
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 232
    if-eqz p1, :cond_2

    move-object v6, v13

    .line 233
    .local v6, "photoResolution":Lcom/oneplus/camera/media/Resolution;
    :goto_1
    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/oneplus/camera/media/PhotoResolutionSelector;->selectResolution(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Ljava/util/List;Lcom/oneplus/camera/media/Resolution;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Lcom/oneplus/camera/media/Resolution;

    move-result-object v6

    .line 234
    if-eqz v6, :cond_3

    .line 235
    move-object/from16 v0, v16

    invoke-interface {v2, v3, v4, v0, v6}, Lcom/oneplus/camera/media/PhotoResolutionSelector;->selectPreviewSize(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;)Landroid/util/Size;

    move-result-object v15

    .line 246
    .local v15, "photoPreviewSize":Landroid/util/Size;
    :goto_2
    if-eqz v15, :cond_5

    .line 247
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_PhotoResolution:Lcom/oneplus/camera/media/Resolution;

    .line 248
    sget-object v7, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_PHOTO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v5}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 249
    sget-object v7, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13, v6}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 250
    sget-object v7, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_PHOTO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v15}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 255
    :goto_3
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3, v4, v7}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->selectResolutions(Lcom/oneplus/camera/media/ResolutionSelector;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Ljava/util/List;

    move-result-object v10

    .line 256
    .local v10, "videoResolutions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_VideoResolution:Lcom/oneplus/camera/media/Resolution;

    .line 259
    .local v14, "currentVideoResolution":Lcom/oneplus/camera/media/Resolution;
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 261
    if-eqz p2, :cond_6

    move-object v11, v14

    .line 262
    .local v11, "videoResolution":Lcom/oneplus/camera/media/Resolution;
    :goto_4
    const/4 v12, 0x0

    move-object/from16 v7, v18

    move-object v8, v3

    move-object v9, v4

    invoke-interface/range {v7 .. v12}, Lcom/oneplus/camera/media/VideoResolutionSelector;->selectResolution(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Ljava/util/List;Lcom/oneplus/camera/media/Resolution;Lcom/oneplus/camera/media/ResolutionSelector$Restriction;)Lcom/oneplus/camera/media/Resolution;

    move-result-object v11

    .line 263
    if-eqz v11, :cond_7

    .line 264
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v3, v4, v1, v11}, Lcom/oneplus/camera/media/VideoResolutionSelector;->selectPreviewSize(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;)Landroid/util/Size;

    move-result-object v17

    .line 274
    .local v17, "videoPreviewSize":Landroid/util/Size;
    :goto_5
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_VideoResolution:Lcom/oneplus/camera/media/Resolution;

    .line 275
    sget-object v7, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 276
    sget-object v7, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14, v11}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 277
    sget-object v7, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_VIDEO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 280
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->updateVideoLimitations(Lcom/oneplus/camera/media/Resolution;)V

    .line 283
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 232
    .end local v6    # "photoResolution":Lcom/oneplus/camera/media/Resolution;
    .end local v10    # "videoResolutions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    .end local v11    # "videoResolution":Lcom/oneplus/camera/media/Resolution;
    .end local v14    # "currentVideoResolution":Lcom/oneplus/camera/media/Resolution;
    .end local v15    # "photoPreviewSize":Landroid/util/Size;
    .end local v17    # "videoPreviewSize":Landroid/util/Size;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 237
    .restart local v6    # "photoResolution":Lcom/oneplus/camera/media/Resolution;
    :cond_3
    new-instance v15, Landroid/util/Size;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v15, v7, v8}, Landroid/util/Size;-><init>(II)V

    .restart local v15    # "photoPreviewSize":Landroid/util/Size;
    goto :goto_2

    .line 241
    .end local v6    # "photoResolution":Lcom/oneplus/camera/media/Resolution;
    .end local v15    # "photoPreviewSize":Landroid/util/Size;
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    const-string v8, "selectResolutions() - Empty photo resolution list"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v6, 0x0

    .line 243
    .restart local v6    # "photoResolution":Lcom/oneplus/camera/media/Resolution;
    new-instance v15, Landroid/util/Size;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v15, v7, v8}, Landroid/util/Size;-><init>(II)V

    .restart local v15    # "photoPreviewSize":Landroid/util/Size;
    goto/16 :goto_2

    .line 252
    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selectResolutions() - No matching previewSize for Resolution "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 261
    .restart local v10    # "videoResolutions":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/media/Resolution;>;"
    .restart local v14    # "currentVideoResolution":Lcom/oneplus/camera/media/Resolution;
    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 266
    .restart local v11    # "videoResolution":Lcom/oneplus/camera/media/Resolution;
    :cond_7
    new-instance v17, Landroid/util/Size;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v7, v8}, Landroid/util/Size;-><init>(II)V

    .restart local v17    # "videoPreviewSize":Landroid/util/Size;
    goto :goto_5

    .line 270
    .end local v11    # "videoResolution":Lcom/oneplus/camera/media/Resolution;
    .end local v17    # "videoPreviewSize":Landroid/util/Size;
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    const-string v8, "selectResolutions() - Empty video resolution list"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v11, 0x0

    .line 272
    .restart local v11    # "videoResolution":Lcom/oneplus/camera/media/Resolution;
    new-instance v17, Landroid/util/Size;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v7, v8}, Landroid/util/Size;-><init>(II)V

    .restart local v17    # "videoPreviewSize":Landroid/util/Size;
    goto :goto_5
.end method

.method private setPhotoResolutionProp(Lcom/oneplus/camera/media/Resolution;)Z
    .locals 9
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    const/4 v6, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->verifyAccess()V

    .line 331
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->isRunningOrInitializing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 333
    iget-object v5, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    const-string v7, "setPhotoResolutionProp() - Component is not running"

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 371
    :goto_0
    return v5

    .line 338
    :cond_0
    iget-object v5, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_PhotoResolution:Lcom/oneplus/camera/media/Resolution;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_PhotoResolution:Lcom/oneplus/camera/media/Resolution;

    invoke-virtual {v5, p1}, Lcom/oneplus/camera/media/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_PhotoResolution:Lcom/oneplus/camera/media/Resolution;

    if-ne v5, p1, :cond_3

    :cond_2
    move v5, v6

    .line 339
    goto :goto_0

    .line 340
    :cond_3
    if-eqz p1, :cond_4

    sget-object v5, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_PHOTO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 342
    iget-object v5, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPhotoResolutionProp() - Resolution "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not contained in list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 343
    goto :goto_0

    .line 347
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 348
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_5

    .line 349
    iget-object v5, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    const-string v7, "selectResolutions() - No camera"

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 350
    goto :goto_0

    .line 355
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getSettings()Lcom/oneplus/camera/Settings;

    move-result-object v4

    .line 356
    .local v4, "settings":Lcom/oneplus/camera/Settings;
    invoke-direct {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getPhotoResolutionSelector()Lcom/oneplus/camera/media/PhotoResolutionSelector;

    move-result-object v3

    .line 357
    .local v3, "resolutionSelector":Lcom/oneplus/camera/media/PhotoResolutionSelector;
    invoke-direct {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getPreviewContainerSize()Landroid/util/Size;

    move-result-object v5

    invoke-interface {v3, v0, v4, v5, p1}, Lcom/oneplus/camera/media/PhotoResolutionSelector;->selectPreviewSize(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;)Landroid/util/Size;

    move-result-object v2

    .line 359
    .local v2, "previewSize":Landroid/util/Size;
    if-nez v2, :cond_6

    .line 360
    iget-object v5, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPhotoResolutionProp() - No matching previewSize for Resolution "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 361
    goto/16 :goto_0

    .line 364
    :cond_6
    invoke-interface {v3, v0, v4, p1}, Lcom/oneplus/camera/media/PhotoResolutionSelector;->saveResolution(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Lcom/oneplus/camera/media/Resolution;)V

    .line 367
    iget-object v1, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_PhotoResolution:Lcom/oneplus/camera/media/Resolution;

    .line 368
    .local v1, "oldResolution":Lcom/oneplus/camera/media/Resolution;
    iput-object p1, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_PhotoResolution:Lcom/oneplus/camera/media/Resolution;

    .line 369
    sget-object v5, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v1, p1}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 370
    sget-object v5, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_PHOTO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 371
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method private setVideoResolutionProp(Lcom/oneplus/camera/media/Resolution;)Z
    .locals 9
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    const/4 v6, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->verifyAccess()V

    .line 431
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->isRunningOrInitializing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 433
    iget-object v5, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    const-string v7, "setVideoResolutionProp() - Component is not running"

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 469
    :goto_0
    return v5

    .line 438
    :cond_0
    iget-object v5, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_VideoResolution:Lcom/oneplus/camera/media/Resolution;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_VideoResolution:Lcom/oneplus/camera/media/Resolution;

    invoke-virtual {v5, p1}, Lcom/oneplus/camera/media/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_VideoResolution:Lcom/oneplus/camera/media/Resolution;

    if-ne v5, p1, :cond_3

    :cond_2
    move v5, v6

    .line 439
    goto :goto_0

    .line 440
    :cond_3
    if-eqz p1, :cond_4

    sget-object v5, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_VIDEO_RESOLUTION_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 442
    iget-object v5, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setVideoResolutionProp() - Resolution "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not contained in list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 443
    goto :goto_0

    .line 447
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 448
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_5

    .line 449
    iget-object v5, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    const-string v7, "selectResolutions() - No camera"

    invoke-static {v5, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 450
    goto :goto_0

    .line 454
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getSettings()Lcom/oneplus/camera/Settings;

    move-result-object v4

    .line 455
    .local v4, "settings":Lcom/oneplus/camera/Settings;
    invoke-direct {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getVideoResolutionSelector()Lcom/oneplus/camera/media/VideoResolutionSelector;

    move-result-object v3

    .line 456
    .local v3, "resolutionSelector":Lcom/oneplus/camera/media/VideoResolutionSelector;
    invoke-direct {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getPreviewContainerSize()Landroid/util/Size;

    move-result-object v5

    invoke-interface {v3, v0, v4, v5, p1}, Lcom/oneplus/camera/media/VideoResolutionSelector;->selectPreviewSize(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Landroid/util/Size;Lcom/oneplus/camera/media/Resolution;)Landroid/util/Size;

    move-result-object v2

    .line 459
    .local v2, "previewSize":Landroid/util/Size;
    invoke-interface {v3, v0, v4, p1}, Lcom/oneplus/camera/media/VideoResolutionSelector;->saveResolution(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;Lcom/oneplus/camera/media/Resolution;)V

    .line 462
    iget-object v1, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_VideoResolution:Lcom/oneplus/camera/media/Resolution;

    .line 463
    .local v1, "oldResolution":Lcom/oneplus/camera/media/Resolution;
    iput-object p1, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_VideoResolution:Lcom/oneplus/camera/media/Resolution;

    .line 464
    sget-object v5, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v1, p1}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 465
    sget-object v5, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_VIDEO_PREVIEW_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 468
    invoke-direct {p0, p1}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->updateVideoLimitations(Lcom/oneplus/camera/media/Resolution;)V

    .line 469
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private updateVideoLimitations(Lcom/oneplus/camera/media/Resolution;)V
    .locals 8
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    .line 476
    if-eqz p1, :cond_4

    .line 478
    invoke-virtual {p1}, Lcom/oneplus/camera/media/Resolution;->is4kVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    sget-object v1, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    const-wide/16 v2, 0x258

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 492
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getMediaResultInfo()Lcom/oneplus/camera/MediaResultInfo;

    move-result-object v0

    .line 482
    .local v0, "info":Lcom/oneplus/camera/MediaResultInfo;
    if-eqz v0, :cond_3

    .line 483
    sget-object v1, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    iget-wide v2, v0, Lcom/oneplus/camera/MediaResultInfo;->extraDurationLimit:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_1

    move-wide v2, v4

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 484
    sget-object v1, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_MAX_VIDEO_FILE_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-wide v2, v0, Lcom/oneplus/camera/MediaResultInfo;->extraSizeLimit:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_2

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 483
    :cond_1
    iget-wide v2, v0, Lcom/oneplus/camera/MediaResultInfo;->extraDurationLimit:J

    goto :goto_1

    .line 484
    :cond_2
    iget-wide v4, v0, Lcom/oneplus/camera/MediaResultInfo;->extraSizeLimit:J

    goto :goto_2

    .line 486
    :cond_3
    sget-object v1, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 491
    .end local v0    # "info":Lcom/oneplus/camera/MediaResultInfo;
    :cond_4
    sget-object v1, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_MAX_VIDEO_DURATION_SECONDS:Lcom/oneplus/base/PropertyKey;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_PhotoResolution:Lcom/oneplus/camera/media/Resolution;

    .line 84
    :goto_0
    return-object v0

    .line 82
    :cond_0
    sget-object v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_VideoResolution:Lcom/oneplus/camera/media/Resolution;

    goto :goto_0

    .line 84
    :cond_1
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhotoResolutionSettingsKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    .line 499
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-nez v0, :cond_0

    .line 500
    iget-object v2, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "selectResolutions() - No camera"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const/4 v2, 0x0

    .line 505
    :goto_0
    return-object v2

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getSettings()Lcom/oneplus/camera/Settings;

    move-result-object v1

    .line 505
    .local v1, "settings":Lcom/oneplus/camera/Settings;
    invoke-direct {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getPhotoResolutionSelector()Lcom/oneplus/camera/media/PhotoResolutionSelector;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/oneplus/camera/media/PhotoResolutionSelector;->getResolutionSettingsKey(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Settings;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onInitialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 123
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 124
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    new-instance v1, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;

    invoke-direct {v1, v0}, Lcom/oneplus/camera/media/DefaultPhotoResolutionSelector;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v1, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_DefaultPhotoResSelector:Lcom/oneplus/camera/media/PhotoResolutionSelector;

    .line 125
    new-instance v1, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;

    invoke-direct {v1, v0}, Lcom/oneplus/camera/media/DefaultVideoResolutionSelector;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    iput-object v1, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_DefaultVideoResSelector:Lcom/oneplus/camera/media/VideoResolutionSelector;

    .line 128
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const-class v2, Lcom/oneplus/camera/ui/Viewfinder;

    new-instance v3, Lcom/oneplus/camera/media/ResolutionManagerImpl$1;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl$1;-><init>(Lcom/oneplus/camera/media/ResolutionManagerImpl;)V

    invoke-static {v1, v2, p0, v3}, Lcom/oneplus/base/component/ComponentUtils;->findComponent(Lcom/oneplus/base/component/ComponentOwner;Ljava/lang/Class;Lcom/oneplus/base/HandlerObject;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 140
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/media/ResolutionManagerImpl$2;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl$2;-><init>(Lcom/oneplus/camera/media/ResolutionManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 148
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/media/ResolutionManagerImpl$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl$3;-><init>(Lcom/oneplus/camera/media/ResolutionManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 157
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/media/ResolutionManagerImpl$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl$4;-><init>(Lcom/oneplus/camera/media/ResolutionManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 167
    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v1, :cond_0

    .line 168
    invoke-direct {p0, v4, v4}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->selectResolutions(ZZ)Z

    .line 169
    :cond_0
    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 319
    check-cast p2, Lcom/oneplus/camera/media/Resolution;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->setPhotoResolutionProp(Lcom/oneplus/camera/media/Resolution;)Z

    move-result v0

    .line 322
    :goto_0
    return v0

    .line 320
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    sget-object v0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->PROP_VIDEO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_1

    .line 321
    check-cast p2, Lcom/oneplus/camera/media/Resolution;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->setVideoResolutionProp(Lcom/oneplus/camera/media/Resolution;)Z

    move-result v0

    goto :goto_0

    .line 322
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/CameraComponent;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setResolutionSelector(Lcom/oneplus/camera/media/ResolutionSelector;I)Lcom/oneplus/base/Handle;
    .locals 10
    .param p1, "selector"    # Lcom/oneplus/camera/media/ResolutionSelector;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->verifyAccess()V

    .line 381
    invoke-virtual {p0}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->isRunningOrInitializing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 383
    iget-object v4, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "setResolutionSelector() - Component is not running"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 422
    :goto_0
    return-object v0

    .line 388
    :cond_0
    if-nez p1, :cond_1

    .line 390
    iget-object v4, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "setResolutionSelector() - No resolution selector"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 391
    goto :goto_0

    .line 395
    :cond_1
    const/4 v2, 0x0

    .line 396
    .local v2, "syncPhotoRes":Z
    const/4 v3, 0x0

    .line 397
    .local v3, "syncVideoRes":Z
    const/4 v1, 0x0

    .line 398
    .local v1, "isKnownType":Z
    new-instance v0, Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;-><init>(Lcom/oneplus/camera/media/ResolutionManagerImpl;Lcom/oneplus/camera/media/ResolutionSelector;)V

    .line 399
    .local v0, "handle":Lcom/oneplus/camera/media/ResolutionManagerImpl$ResolutionSelectorHandle;
    iget-object v7, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    const-string v8, "setResolutionSelector() - Selector : "

    const-string v9, ", handle : "

    invoke-static {v7, v8, p1, v9, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 400
    instance-of v7, p1, Lcom/oneplus/camera/media/PhotoResolutionSelector;

    if-eqz v7, :cond_2

    .line 402
    const/4 v1, 0x1

    .line 403
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_4

    move v2, v4

    .line 404
    :goto_1
    iget-object v7, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_PhotoResSelectorHandles:Ljava/util/LinkedList;

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_2
    instance-of v7, p1, Lcom/oneplus/camera/media/VideoResolutionSelector;

    if-eqz v7, :cond_3

    .line 408
    const/4 v1, 0x1

    .line 409
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_5

    move v3, v4

    .line 410
    :goto_2
    iget-object v4, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->m_VideoResSelectorHandles:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_3
    if-nez v1, :cond_6

    .line 414
    iget-object v4, p0, Lcom/oneplus/camera/media/ResolutionManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "setResolutionSelector() - Unknown selector type"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 415
    goto :goto_0

    :cond_4
    move v2, v5

    .line 403
    goto :goto_1

    :cond_5
    move v3, v5

    .line 409
    goto :goto_2

    .line 419
    :cond_6
    invoke-direct {p0, v2, v3}, Lcom/oneplus/camera/media/ResolutionManagerImpl;->selectResolutions(ZZ)Z

    goto :goto_0
.end method
