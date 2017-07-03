.class public interface abstract Lcom/oneplus/gallery2/media/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;
    }
.end annotation


# static fields
.field public static final FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

.field public static final FLAG_ALWAYS_REFRESH:I

.field public static final FLAG_EXPAND_GROUPED_MEDIA:I

.field public static final FLAG_RECYCLED_MEDIA_ONLY:I

.field public static final PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 18
    new-instance v0, Lcom/oneplus/base/BitFlagsGroup;

    const-class v1, Lcom/oneplus/gallery2/media/MediaSource;

    invoke-direct {v0, v1}, Lcom/oneplus/base/BitFlagsGroup;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSource;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    .line 24
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSource;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/MediaSource;->FLAG_EXPAND_GROUPED_MEDIA:I

    .line 30
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSource;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/MediaSource;->FLAG_RECYCLED_MEDIA_ONLY:I

    .line 36
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSource;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/MediaSource;->FLAG_ALWAYS_REFRESH:I

    .line 42
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsActive"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSource;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    .line 46
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsMediaTableReady"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSource;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSource;->PROP_IS_MEDIA_TABLE_READY:Lcom/oneplus/base/PropertyKey;

    return-void
.end method


# virtual methods
.method public abstract activate(I)Lcom/oneplus/base/Handle;
.end method

.method public abstract addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;
.end method

.method public abstract addMediaIterationClient(Lcom/oneplus/gallery2/media/MediaIterationClient;Lcom/oneplus/gallery2/media/MediaType;)Lcom/oneplus/base/Handle;
.end method

.method public abstract getGroupedMedia(Lcom/oneplus/gallery2/media/Media;I)[Lcom/oneplus/gallery2/media/GroupedMedia;
.end method

.method public abstract getMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract getMedia(Ljava/lang/String;I)Lcom/oneplus/gallery2/media/Media;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/oneplus/gallery2/media/Media;",
            ">(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation
.end method

.method public abstract getMedia(Lcom/oneplus/gallery2/media/MediaType;I)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/media/MediaType;",
            "I)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isMediaIdSupported(Ljava/lang/String;)Z
.end method

.method public abstract isRecycledMedia(Lcom/oneplus/gallery2/media/Media;)Z
.end method

.method public abstract isSubMedia(Lcom/oneplus/gallery2/media/Media;)Z
.end method

.method public abstract scheduleMediaIteration(I)Z
.end method
