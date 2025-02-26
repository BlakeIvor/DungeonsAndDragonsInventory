from django.urls import path

from . import views
from django.urls import include, path
from django.views.generic.base import TemplateView  # new

urlpatterns = [
    path("character/<int:id>/", views.character, name="character"),
    path('', views.home, name="home"),  
    path("accounts/signup/", views.signup.as_view(), name="signup"),
    path("search/", views.search_equipment, name="search"),
    path("equipment-search/", views.search_equipment, name="equipment_search"),
    path("customize-item/<int:character_id>/<int:item_id>/<slug:property>/", views.customize_item, name="customize_item"),
    path("user/", views.user, name="user"),
    path('home/about',  views.AboutPageView.as_view(), name="about"),
    path("gettingstarted", views.GettingStartedPageView.as_view(), name='gettingstarted'),
    path('home/stats',  views.StatsPageView, name="stats"),
]
