.class public interface abstract Lcom/oneplus/gallery2/media/MediaSet;
.super Ljava/lang/Object;
.source "MediaSet.java"

# interfaces
.implements Lcom/oneplus/base/HandlerObject;
.implements Lcom/oneplus/base/BaseObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;,
        Lcom/oneplus/gallery2/media/MediaSet$Type;
    }
.end annotation


# static fields
.field public static final COVER_MEDIA_COMPARATOR:Lcom/oneplus/gallery2/media/MediaComparator;

.field public static final EVENT_DELETED:Lcom/oneplus/base/EventKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_KEY_GENERATOR:Lcom/oneplus/gallery2/ExtraKeyGenerator;

.field public static final FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

.field public static final FLAG_MOVE_TO_RECYCE_BIN:I

.field public static final FLAG_RESTORE_FROM_RECYCLE_BIN:I

.field public static final MAX_COVER_MEDIA_COUNT:I = 0xc

.field public static final PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_LAST_MEDIA_ADDED_TIME:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_NAME:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 22
    new-instance v0, Lcom/oneplus/base/BitFlagsGroup;

    const-class v1, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct {v0, v1}, Lcom/oneplus/base/BitFlagsGroup;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSet;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    .line 28
    new-instance v0, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;

    invoke-direct {v0}, Lcom/oneplus/gallery2/SimpleExtraKeyGenerator;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSet;->EXTRA_KEY_GENERATOR:Lcom/oneplus/gallery2/ExtraKeyGenerator;

    .line 34
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/MediaSet;->FLAG_MOVE_TO_RECYCE_BIN:I

    .line 38
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/MediaSet;->FLAG_RESTORE_FROM_RECYCLE_BIN:I

    .line 44
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "CoverHashCode"

    const-class v2, Ljava/lang/String;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_COVER_HASH_CODE:Lcom/oneplus/base/PropertyKey;

    .line 48
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsDeleting"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_IS_DELETING:Lcom/oneplus/base/PropertyKey;

    .line 52
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "LastMediaAddedTime"

    const-class v2, Ljava/lang/Long;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSet;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_LAST_MEDIA_ADDED_TIME:Lcom/oneplus/base/PropertyKey;

    .line 56
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "MediaCount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 60
    new-instance v6, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v7, "Name"

    const-class v8, Ljava/lang/String;

    const-class v9, Lcom/oneplus/gallery2/media/MediaSet;

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v6, Lcom/oneplus/gallery2/media/MediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    .line 64
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "PhotoCount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_PHOTO_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 68
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "VideoCount"

    const-class v2, Ljava/lang/Integer;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_VIDEO_COUNT:Lcom/oneplus/base/PropertyKey;

    .line 74
    new-instance v0, Lcom/oneplus/base/EventKey;

    const-string/jumbo v1, "Deleted"

    const-class v2, Lcom/oneplus/base/EventArgs;

    const-class v3, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/EventKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSet;->EVENT_DELETED:Lcom/oneplus/base/EventKey;

    .line 86
    sget-object v0, Lcom/oneplus/gallery2/media/MediaComparator;->TAKEN_TIME_DESC:Lcom/oneplus/gallery2/media/MediaComparator;

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSet;->COVER_MEDIA_COMPARATOR:Lcom/oneplus/gallery2/media/MediaComparator;

    return-void
.end method


# virtual methods
.method public abstract contains(Lcom/oneplus/gallery2/media/Media;)Z
.end method

.method public abstract delete(Lcom/oneplus/gallery2/media/MediaSet$DeletionCallback;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;
.end method

.method public abstract getExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/gallery2/ExtraKey",
            "<TT;>;TT;)TT;"
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getSource()Lcom/oneplus/gallery2/media/MediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/oneplus/gallery2/media/MediaSource;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract getTargetMediaType()Lcom/oneplus/gallery2/media/MediaType;
.end method

.method public abstract getType()Lcom/oneplus/gallery2/media/MediaSet$Type;
.end method

.method public abstract isVirtual()Z
.end method

.method public abstract openMediaList(Lcom/oneplus/gallery2/media/MediaComparator;II)Lcom/oneplus/gallery2/media/MediaList;
.end method

.method public abstract putExtra(Lcom/oneplus/gallery2/ExtraKey;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/gallery2/ExtraKey",
            "<TT;>;TT;)V"
        }
    .end annotation
.end method
