.class Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;
.super Ljava/lang/Object;
.source "FilterEditorMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/editor/FilterEditorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterToolbarItem"
.end annotation


# instance fields
.field private button:Landroid/widget/ImageButton;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private drawableSelected:Landroid/graphics/drawable/Drawable;

.field private label:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "button"    # Landroid/widget/ImageButton;
    .param p2, "label"    # Landroid/widget/TextView;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "drawableSelected"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;->button:Landroid/widget/ImageButton;

    .line 114
    iput-object p3, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;->drawable:Landroid/graphics/drawable/Drawable;

    .line 115
    iput-object p4, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;->drawableSelected:Landroid/graphics/drawable/Drawable;

    .line 116
    iput-object p2, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;->label:Landroid/widget/TextView;

    .line 117
    return-void
.end method


# virtual methods
.method public setSelected(Z)V
    .locals 2
    .param p1, "selected"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;->button:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;->drawableSelected:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    if-eqz p1, :cond_2

    .line 124
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;->button:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;->drawableSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;->button:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/FilterEditorMode$FilterToolbarItem;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
