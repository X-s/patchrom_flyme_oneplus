.class public interface abstract Lcom/oneplus/gallery/media/MediaProvider$ContentProviderQueryCallback;
.super Ljava/lang/Object;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaProvider;
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
