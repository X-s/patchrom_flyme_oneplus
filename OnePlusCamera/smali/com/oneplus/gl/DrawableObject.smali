.class public abstract Lcom/oneplus/gl/DrawableObject;
.super Lcom/oneplus/gl/EglObject;
.source "DrawableObject.java"


# instance fields
.field drawingContext:Lcom/oneplus/gl/DrawingContext;

.field nextDrawableObj:Lcom/oneplus/gl/DrawableObject;

.field prevDrawableObj:Lcom/oneplus/gl/DrawableObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/oneplus/gl/EglObject;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract hasAlphaBlending()Z
.end method

.method protected abstract onDraw(Lcom/oneplus/gl/DrawingContext;)V
.end method
