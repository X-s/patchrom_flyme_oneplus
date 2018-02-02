.class public interface abstract Lcom/oneplus/gallery2/media/EditedMedia;
.super Ljava/lang/Object;
.source "EditedMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media;


# static fields
.field public static final FLAG_ORIGINAL_MEDIA_CHANGED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/oneplus/gallery2/media/EditedMedia;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    invoke-virtual {v0}, Lcom/oneplus/base/BitFlagsGroup;->nextIntFlag()I

    move-result v0

    sput v0, Lcom/oneplus/gallery2/media/EditedMedia;->FLAG_ORIGINAL_MEDIA_CHANGED:I

    return-void
.end method


# virtual methods
.method public abstract getOriginalMedia()Lcom/oneplus/gallery2/media/Media;
.end method
