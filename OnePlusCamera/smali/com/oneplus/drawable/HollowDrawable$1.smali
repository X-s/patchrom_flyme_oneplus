.class Lcom/oneplus/drawable/HollowDrawable$1;
.super Ljava/lang/Object;
.source "HollowDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/drawable/HollowDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/drawable/HollowDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/drawable/HollowDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/drawable/HollowDrawable;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/oneplus/drawable/HollowDrawable$1;->this$0:Lcom/oneplus/drawable/HollowDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable$1;->this$0:Lcom/oneplus/drawable/HollowDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/HollowDrawable;->invalidateSelf()V

    .line 40
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable$1;->this$0:Lcom/oneplus/drawable/HollowDrawable;

    invoke-virtual {v0, p2, p3, p4}, Lcom/oneplus/drawable/HollowDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 34
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oneplus/drawable/HollowDrawable$1;->this$0:Lcom/oneplus/drawable/HollowDrawable;

    invoke-virtual {v0, p2}, Lcom/oneplus/drawable/HollowDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 28
    return-void
.end method
