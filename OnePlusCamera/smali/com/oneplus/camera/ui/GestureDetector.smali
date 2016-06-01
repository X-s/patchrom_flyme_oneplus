.class public interface abstract Lcom/oneplus/camera/ui/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;
    }
.end annotation


# virtual methods
.method public abstract handleTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract setGestureHandler(Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;I)Lcom/oneplus/base/Handle;
.end method
