.class public interface abstract Lcom/oneplus/gallery2/media/ContentObserver;
.super Ljava/lang/Object;
.source "ContentObserver.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;
    }
.end annotation


# virtual methods
.method public abstract notifyContentChanged(Landroid/net/Uri;)V
.end method

.method public abstract registerContentChangedCallback(Landroid/net/Uri;Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
.end method
