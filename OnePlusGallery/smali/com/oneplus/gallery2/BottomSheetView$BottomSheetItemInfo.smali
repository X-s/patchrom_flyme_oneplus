.class public Lcom/oneplus/gallery2/BottomSheetView$BottomSheetItemInfo;
.super Ljava/lang/Object;
.source "BottomSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/BottomSheetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BottomSheetItemInfo"
.end annotation


# instance fields
.field public comment:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public id:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "comment"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p3, p0, Lcom/oneplus/gallery2/BottomSheetView$BottomSheetItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 184
    iput-wide p1, p0, Lcom/oneplus/gallery2/BottomSheetView$BottomSheetItemInfo;->id:J

    .line 185
    iput-object p4, p0, Lcom/oneplus/gallery2/BottomSheetView$BottomSheetItemInfo;->title:Ljava/lang/String;

    .line 186
    iput-object p5, p0, Lcom/oneplus/gallery2/BottomSheetView$BottomSheetItemInfo;->comment:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-wide p1, p0, Lcom/oneplus/gallery2/BottomSheetView$BottomSheetItemInfo;->id:J

    .line 177
    iput-object p3, p0, Lcom/oneplus/gallery2/BottomSheetView$BottomSheetItemInfo;->title:Ljava/lang/String;

    .line 178
    iput-object p4, p0, Lcom/oneplus/gallery2/BottomSheetView$BottomSheetItemInfo;->comment:Ljava/lang/String;

    .line 179
    return-void
.end method
