.class final Lcom/oneplus/gl/EglContextManager$EglContextState;
.super Ljava/lang/Object;
.source "EglContextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gl/EglContextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EglContextState"
.end annotation


# instance fields
.field public activeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

.field public freeEglObjectHolders:Lcom/oneplus/gl/EglObjectHolder;

.field public isEglContextReady:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gl/EglContextManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gl/EglContextManager$1;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/oneplus/gl/EglContextManager$EglContextState;-><init>()V

    return-void
.end method
