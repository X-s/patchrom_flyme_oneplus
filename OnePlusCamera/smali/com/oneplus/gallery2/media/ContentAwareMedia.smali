.class public interface abstract Lcom/oneplus/gallery2/media/ContentAwareMedia;
.super Ljava/lang/Object;
.source "ContentAwareMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media;


# static fields
.field public static final FLAG_CONTENT_OBJECT_TYPES_CHANGED:I

.field public static final FLAG_CONTENT_SCENES_CHANGED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/oneplus/gallery2/media/ContentAwareMedia;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/ContentAwareMedia;->FLAG_CONTENT_OBJECT_TYPES_CHANGED:I

    .line 20
    sget-object v0, Lcom/oneplus/gallery2/media/ContentAwareMedia;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/ContentAwareMedia;->FLAG_CONTENT_SCENES_CHANGED:I

    return-void
.end method


# virtual methods
.method public abstract containsObject(Lcom/oneplus/gallery2/contentdetection/ObjectType;)Z
.end method

.method public abstract containsScene(Lcom/oneplus/gallery2/media/content/Scene;)Z
.end method

.method public abstract getContentObjectTypes(Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/contentdetection/ObjectType;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract getContentScenes(Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/content/Scene;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract getPreviousContentObjectTypes(Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/contentdetection/ObjectType;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract getPreviousContentScenes(Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/media/content/Scene;",
            ">;I)I"
        }
    .end annotation
.end method
