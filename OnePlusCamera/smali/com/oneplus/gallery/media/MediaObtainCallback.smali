.class public interface abstract Lcom/oneplus/gallery/media/MediaObtainCallback;
.super Ljava/lang/Object;
.source "MediaObtainCallback.java"


# static fields
.field public static final EMPTY:Lcom/oneplus/gallery/media/MediaObtainCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/oneplus/gallery/media/MediaObtainCallback$1;

    invoke-direct {v0}, Lcom/oneplus/gallery/media/MediaObtainCallback$1;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/media/MediaObtainCallback;->EMPTY:Lcom/oneplus/gallery/media/MediaObtainCallback;

    .line 16
    return-void
.end method


# virtual methods
.method public abstract onObtained(Lcom/oneplus/gallery/media/MediaId;Lcom/oneplus/gallery/media/Media;)V
.end method
