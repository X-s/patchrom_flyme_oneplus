.class public Lcom/android/systemui_ex/volume/Interaction;
.super Ljava/lang/Object;
.source "Interaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/volume/Interaction$Callback;
    }
.end annotation


# direct methods
.method public static register(Landroid/view/View;Lcom/android/systemui_ex/volume/Interaction$Callback;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "callback"    # Lcom/android/systemui_ex/volume/Interaction$Callback;

    .prologue
    .line 27
    new-instance v0, Lcom/android/systemui_ex/volume/Interaction$1;

    invoke-direct {v0, p1}, Lcom/android/systemui_ex/volume/Interaction$1;-><init>(Lcom/android/systemui_ex/volume/Interaction$Callback;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 34
    new-instance v0, Lcom/android/systemui_ex/volume/Interaction$2;

    invoke-direct {v0, p1}, Lcom/android/systemui_ex/volume/Interaction$2;-><init>(Lcom/android/systemui_ex/volume/Interaction$Callback;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 41
    return-void
.end method
