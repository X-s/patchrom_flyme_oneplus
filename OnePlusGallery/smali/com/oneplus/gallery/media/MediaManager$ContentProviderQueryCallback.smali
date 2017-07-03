.class public interface abstract Lcom/oneplus/gallery/media/MediaManager$ContentProviderQueryCallback;
.super Ljava/lang/Object;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentProviderQueryCallback"
.end annotation


# virtual methods
.method public abstract onQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/database/Cursor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
