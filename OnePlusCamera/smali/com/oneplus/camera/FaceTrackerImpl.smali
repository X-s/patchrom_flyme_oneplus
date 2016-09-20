.class final Lcom/oneplus/camera/FaceTrackerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "FaceTrackerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/FaceTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/FaceTrackerImpl$FaceDetectionDisableHandle;
    }
.end annotation


# static fields
.field private static final MSG_FACES_CHANGED:I = 0x2710


# instance fields
.field private m_CurrentFaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$Face;",
            ">;"
        }
    .end annotation
.end field

.field private final m_FaceDetectionDisableHandle:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/FaceTrackerImpl$FaceDetectionDisableHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_FaceListQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$Face;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_FacesChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$Face;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    .line 70
    const-string v0, "Face tracker"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 25
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_CurrentFaces:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FaceDetectionDisableHandle:Ljava/util/LinkedList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FaceListQueue:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/oneplus/camera/FaceTrackerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/FaceTrackerImpl$1;-><init>(Lcom/oneplus/camera/FaceTrackerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FacesChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/FaceTrackerImpl;Lcom/oneplus/base/Handle;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/FaceTrackerImpl;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FaceTrackerImpl;->enableFaceDetection(Lcom/oneplus/base/Handle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/camera/FaceTrackerImpl;Lcom/oneplus/camera/Camera;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/FaceTrackerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/FaceTrackerImpl;->onFacesPropChanged(Lcom/oneplus/camera/Camera;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/camera/FaceTrackerImpl;)Lcom/oneplus/base/PropertyChangedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/FaceTrackerImpl;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FacesChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/camera/FaceTrackerImpl;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/FaceTrackerImpl;
    .param p1, "x1"    # Lcom/oneplus/camera/Camera;
    .param p2, "x2"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/FaceTrackerImpl;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/camera/FaceTrackerImpl;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/camera/FaceTrackerImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/oneplus/camera/FaceTrackerImpl;->onFacesChanged(Ljava/util/List;)V

    return-void
.end method

.method private enableFaceDetection(Lcom/oneplus/base/Handle;)V
    .locals 1
    .param p1, "handle"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/oneplus/camera/FaceTrackerImpl;->verifyAccess()V

    .line 300
    iget-object v0, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FaceDetectionDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FaceDetectionDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/oneplus/camera/FaceTrackerImpl;->updateFaceDetectionState()V

    goto :goto_0
.end method

.method private onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "prevCamera"    # Lcom/oneplus/camera/Camera;
    .param p2, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 108
    new-instance v1, Lcom/oneplus/camera/FaceTrackerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/camera/FaceTrackerImpl$2;-><init>(Lcom/oneplus/camera/FaceTrackerImpl;Lcom/oneplus/camera/Camera;)V

    invoke-static {p1, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 117
    :cond_0
    if-eqz p2, :cond_1

    .line 119
    iget-object v1, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FaceDetectionDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 120
    .local v0, "isEmpty":Z
    new-instance v1, Lcom/oneplus/camera/FaceTrackerImpl$3;

    invoke-direct {v1, p0, p2, v0}, Lcom/oneplus/camera/FaceTrackerImpl$3;-><init>(Lcom/oneplus/camera/FaceTrackerImpl;Lcom/oneplus/camera/Camera;Z)V

    invoke-static {p2, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 134
    .end local v0    # "isEmpty":Z
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/camera/FaceTrackerImpl;->onFacesChanged(Ljava/util/List;)V

    .line 135
    return-void
.end method

.method private onFacesChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$Face;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "faces":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    if-nez p1, :cond_0

    .line 143
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_CurrentFaces:Ljava/util/List;

    .line 147
    .local v1, "prevFaces":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/camera/FaceTrackerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    if-eq v2, v3, :cond_2

    .line 149
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 150
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera$Face;

    invoke-virtual {v2}, Lcom/oneplus/camera/Camera$Face;->recycle()V

    .line 149
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 151
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 153
    .end local v0    # "i":I
    :cond_2
    iput-object p1, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_CurrentFaces:Ljava/util/List;

    .line 154
    sget-object v2, Lcom/oneplus/camera/FaceTrackerImpl;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2, v1, p1}, Lcom/oneplus/camera/FaceTrackerImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    if-eqz v1, :cond_4

    .line 160
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 161
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera$Face;

    invoke-virtual {v2}, Lcom/oneplus/camera/Camera$Face;->recycle()V

    .line 160
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 162
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 164
    .end local v0    # "i":I
    :cond_4
    if-eqz v1, :cond_5

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_5

    .line 166
    iget-object v3, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FaceListQueue:Ljava/util/List;

    monitor-enter v3

    .line 168
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FaceListQueue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    monitor-exit v3

    .line 172
    :cond_5
    return-void

    .line 169
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 158
    :catchall_1
    move-exception v2

    move-object v3, v2

    if-eqz v1, :cond_7

    .line 160
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_6

    .line 161
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera$Face;

    invoke-virtual {v2}, Lcom/oneplus/camera/Camera$Face;->recycle()V

    .line 160
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 162
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 164
    .end local v0    # "i":I
    :cond_7
    if-eqz v1, :cond_8

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_8

    .line 166
    iget-object v4, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FaceListQueue:Ljava/util/List;

    monitor-enter v4

    .line 168
    :try_start_2
    iget-object v2, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FaceListQueue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_8
    throw v3

    :catchall_2
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2
.end method

.method private onFacesPropChanged(Lcom/oneplus/camera/Camera;Ljava/util/List;)V
    .locals 6
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/camera/Camera;",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$Face;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "faces":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    const/4 v5, 0x0

    .line 180
    iget-object v3, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FaceListQueue:Ljava/util/List;

    monitor-enter v3

    .line 182
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FaceListQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FaceListQueue:Ljava/util/List;

    iget-object v4, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FaceListQueue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 189
    .local v0, "faceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 193
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera$Face;

    invoke-static {v2}, Lcom/oneplus/camera/Camera$Face;->obtain(Lcom/oneplus/camera/Camera$Face;)Lcom/oneplus/camera/Camera$Face;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 186
    .end local v0    # "faceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    .end local v1    # "i":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/camera/FaceTrackerImpl;->TAG:Ljava/lang/String;

    const-string v4, "onFacesPropChanged() - No free face list"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "faceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    goto :goto_0

    .line 189
    .end local v0    # "faceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 194
    .restart local v0    # "faceList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$Face;>;"
    .restart local v1    # "i":I
    :cond_1
    const/16 v2, 0x2710

    invoke-static {p0, v2, v5, v5, v0}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 196
    iget-object v2, p0, Lcom/oneplus/camera/FaceTrackerImpl;->TAG:Ljava/lang/String;

    const-string v3, "onFacesPropChanged() - Fail to send face list back"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_2
    if-ltz v1, :cond_2

    .line 198
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/Camera$Face;

    invoke-virtual {v2}, Lcom/oneplus/camera/Camera$Face;->recycle()V

    .line 197
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 199
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 200
    iget-object v3, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FaceListQueue:Ljava/util/List;

    monitor-enter v3

    .line 202
    :try_start_2
    iget-object v2, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FaceListQueue:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    monitor-exit v3

    .line 205
    :cond_3
    return-void

    .line 203
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private updateFaceDetectionState()V
    .locals 3

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/oneplus/camera/FaceTrackerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    .line 273
    .local v0, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0, v0}, Lcom/oneplus/camera/FaceTrackerImpl;->updateFaceDetectionState(Lcom/oneplus/camera/Camera;)V

    .line 277
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/FaceTrackerImpl;->TAG:Ljava/lang/String;

    const-string v2, "updateFaceDetectionState() - getCamera null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateFaceDetectionState(Lcom/oneplus/camera/Camera;)V
    .locals 2
    .param p1, "camera"    # Lcom/oneplus/camera/Camera;

    .prologue
    .line 282
    iget-object v1, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FaceDetectionDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 283
    .local v0, "isEmpty":Z
    new-instance v1, Lcom/oneplus/camera/FaceTrackerImpl$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/oneplus/camera/FaceTrackerImpl$6;-><init>(Lcom/oneplus/camera/FaceTrackerImpl;Lcom/oneplus/camera/Camera;Z)V

    invoke-static {p1, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 292
    return-void
.end method


# virtual methods
.method public disableFaceDetection(Lcom/oneplus/camera/FaceTracker$FaceDetectionDisabledReason;I)Lcom/oneplus/base/Handle;
    .locals 4
    .param p1, "reason"    # Lcom/oneplus/camera/FaceTracker$FaceDetectionDisabledReason;
    .param p2, "flags"    # I

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/oneplus/camera/FaceTrackerImpl;->verifyAccess()V

    .line 248
    invoke-virtual {p0}, Lcom/oneplus/camera/FaceTrackerImpl;->isRunningOrInitializing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/oneplus/camera/FaceTrackerImpl;->TAG:Ljava/lang/String;

    const-string v2, "disableFaceDetection() - Component is not running"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    .line 267
    :goto_0
    return-object v0

    .line 255
    :cond_0
    if-nez p1, :cond_1

    .line 256
    sget-object p1, Lcom/oneplus/camera/FaceTracker$FaceDetectionDisabledReason;->UNKNOWN:Lcom/oneplus/camera/FaceTracker$FaceDetectionDisabledReason;

    .line 259
    :cond_1
    new-instance v0, Lcom/oneplus/camera/FaceTrackerImpl$FaceDetectionDisableHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/camera/FaceTrackerImpl$FaceDetectionDisableHandle;-><init>(Lcom/oneplus/camera/FaceTrackerImpl;Lcom/oneplus/camera/FaceTracker$FaceDetectionDisabledReason;)V

    .line 260
    .local v0, "handle":Lcom/oneplus/camera/FaceTrackerImpl$FaceDetectionDisableHandle;
    iget-object v1, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_FaceDetectionDisableHandle:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v1, p0, Lcom/oneplus/camera/FaceTrackerImpl;->TAG:Ljava/lang/String;

    const-string v2, "disableFaceDetection() - "

    invoke-virtual {v0}, Lcom/oneplus/camera/FaceTrackerImpl$FaceDetectionDisableHandle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    invoke-direct {p0}, Lcom/oneplus/camera/FaceTrackerImpl;->updateFaceDetectionState()V

    goto :goto_0
.end method

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
    .line 79
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/camera/FaceTrackerImpl;->PROP_FACES:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/oneplus/camera/FaceTrackerImpl;->m_CurrentFaces:Ljava/util/List;

    .line 81
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->handleMessage(Landroid/os/Message;)V

    .line 100
    :goto_0
    return-void

    .line 93
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/FaceTrackerImpl;->onFacesChanged(Ljava/util/List;)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 213
    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    .line 216
    invoke-virtual {p0}, Lcom/oneplus/camera/FaceTrackerImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 217
    .local v0, "activity":Lcom/oneplus/camera/CameraActivity;
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/FaceTrackerImpl$4;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/FaceTrackerImpl$4;-><init>(Lcom/oneplus/camera/FaceTrackerImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 225
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/FaceTrackerImpl$5;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/FaceTrackerImpl$5;-><init>(Lcom/oneplus/camera/FaceTrackerImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 236
    invoke-virtual {p0}, Lcom/oneplus/camera/FaceTrackerImpl;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v1

    .line 237
    .local v1, "camera":Lcom/oneplus/camera/Camera;
    if-eqz v1, :cond_0

    .line 238
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/oneplus/camera/FaceTrackerImpl;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    .line 240
    :cond_0
    return-void
.end method
