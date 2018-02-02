.class final Lcom/oneplus/gl/EglObjectHolder;
.super Ljava/lang/Object;
.source "EglObjectHolder.java"


# instance fields
.field public eglObject:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oneplus/gl/EglObject;",
            ">;"
        }
    .end annotation
.end field

.field public nextHolder:Lcom/oneplus/gl/EglObjectHolder;

.field public prevHolder:Lcom/oneplus/gl/EglObjectHolder;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
