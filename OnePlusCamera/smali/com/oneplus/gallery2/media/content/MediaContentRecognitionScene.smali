.class public Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;
.super Ljava/lang/Object;
.source "MediaContentRecognitionScene.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/content/Scene;


# static fields
.field private static final ID_PREFIX:Ljava/lang/String; = "OPMCR/"

.field private static final INSTANCES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEYWORD_LIST_TABLE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field private static final SCENE_COUNT:I = 0x3e8


# instance fields
.field private final m_Id:Ljava/lang/String;

.field private final m_RawId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->INSTANCES:Landroid/util/SparseArray;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->KEYWORD_LIST_TABLE:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->m_RawId:I

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "OPMCR/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->m_RawId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->m_Id:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;)V
    .locals 1

    .prologue
    .line 48
    iget v0, p1, Lcom/oneplus/gallery2/media/GalleryDatabase$SceneDetectionResult;->sceneId:I

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;-><init>(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/mediacontentrecognition/photo/SceneDetectionResult;)V
    .locals 1

    .prologue
    .line 38
    iget v0, p1, Lcom/oneplus/mediacontentrecognition/photo/SceneDetectionResult;->sceneId:I

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;-><init>(I)V

    .line 39
    return-void
.end method

.method public static create(I)Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;
    .locals 3

    .prologue
    .line 68
    sget-object v1, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->INSTANCES:Landroid/util/SparseArray;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->INSTANCES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;

    .line 71
    if-eqz v0, :cond_0

    .line 68
    :goto_0
    monitor-exit v1

    .line 77
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;-><init>(I)V

    .line 74
    sget-object v2, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->INSTANCES:Landroid/util/SparseArray;

    invoke-virtual {v2, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getAllKeywords(Landroid/content/Context;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/16 v0, 0x3e7

    .line 99
    :goto_0
    if-ltz v0, :cond_0

    .line 100
    invoke-static {p0, v0, p1, v1}, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->getKeywords(Landroid/content/Context;ILjava/util/Set;Z)V

    .line 99
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method public static getAllScenes(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-",
            "Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    const/16 v0, 0x3e7

    .line 124
    :goto_0
    if-ltz v0, :cond_0

    .line 125
    invoke-static {v0}, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->create(I)Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method public static getAllScenes()[Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;
    .locals 3

    .prologue
    const/16 v0, 0x3e8

    .line 110
    new-array v1, v0, [Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;

    const/16 v0, 0x3e7

    .line 111
    :goto_0
    if-ltz v0, :cond_0

    .line 112
    invoke-static {v0}, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->create(I)Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;

    move-result-object v2

    aput-object v2, v1, v0

    .line 111
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 113
    :cond_0
    return-object v1
.end method

.method private static getKeywords(Landroid/content/Context;ILjava/util/Set;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 148
    if-nez p3, :cond_1

    .line 150
    :goto_0
    sget-object v4, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->KEYWORD_LIST_TABLE:Landroid/util/SparseArray;

    monitor-enter v4

    .line 152
    :try_start_0
    sget-object v0, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->KEYWORD_LIST_TABLE:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 153
    if-eqz v0, :cond_2

    move-object v2, v0

    .line 150
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    array-length v0, v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    .line 169
    aget v1, v2, v0

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "\\|"

    .line 170
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 171
    array-length v1, v4

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 172
    aget-object v5, v4, v1

    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 149
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 155
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "opmcr_scene_keywords_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "array"

    const-string/jumbo v2, "com.oneplus.gallery"

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 156
    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 159
    array-length v0, v2

    new-array v0, v0, [I

    .line 160
    array-length v1, v2

    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 161
    aget-object v5, v2, v1

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "com.oneplus.gallery"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v1

    goto :goto_3

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 157
    :cond_3
    :try_start_2
    monitor-exit v4

    return-void

    .line 162
    :cond_4
    sget-object v1, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->KEYWORD_LIST_TABLE:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v0

    goto :goto_1

    .line 174
    :cond_5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    instance-of v0, p1, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;

    if-nez v0, :cond_0

    .line 87
    return v2

    .line 86
    :cond_0
    check-cast p1, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;

    iget v0, p1, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->m_RawId:I

    iget v1, p0, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->m_RawId:I

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords(Landroid/content/Context;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    iget v0, p0, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->m_RawId:I

    const/4 v1, 0x1

    invoke-static {p1, v0, p2, v1}, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->getKeywords(Landroid/content/Context;ILjava/util/Set;Z)V

    .line 142
    return-void
.end method

.method public getRawId()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->m_RawId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->m_RawId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/oneplus/gallery2/media/content/MediaContentRecognitionScene;->m_Id:Ljava/lang/String;

    return-object v0
.end method
