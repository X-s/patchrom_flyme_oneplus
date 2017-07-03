.class public interface abstract Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaObtainCallback"
.end annotation


# static fields
.field public static final EMPTY:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback$1;

    invoke-direct {v0}, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback$1;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;->EMPTY:Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;

    return-void
.end method


# virtual methods
.method public abstract onMediaObtained(Lcom/oneplus/gallery2/media/MediaSource;Landroid/net/Uri;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media;I)V
.end method
